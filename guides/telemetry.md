# Telemetry

The library emits `:telemetry` events for every Stripe API request, giving
you observability into latency, error rates, retry behavior, and more.

## Events

| Event | Measurements | Metadata |
|-------|-------------|----------|
| `[:stripe, :request, :start]` | `system_time` | `method`, `path`, `base_address` |
| `[:stripe, :request, :stop]` | `duration` | `method`, `path`, `base_address`, `http_status`, `num_retries`, `request_id`, `error` (on failure) |

### Metadata Fields

| Field | Type | Description |
|-------|------|-------------|
| `method` | `atom` | HTTP method (`:get`, `:post`, etc.) |
| `path` | `String.t()` | Request path (e.g. `"/v1/charges"`) |
| `base_address` | `atom` | `:api` or `:files` |
| `http_status` | `integer \| nil` | HTTP status code, or `nil` for connection errors |
| `num_retries` | `integer` | Number of retries before the final response (0 = first attempt succeeded) |
| `request_id` | `String.t() \| nil` | Stripe's `request-id` header — useful for support tickets |
| `error` | `%Stripe.Error{} \| nil` | Only present on failure |

### Measurements

- `system_time` — `:start` event wall-clock time (from `System.system_time()`)
- `duration` — elapsed time in native units (use `System.convert_time_unit/3`)

## Logging

Attach a handler to log every Stripe request:

```elixir
# lib/my_app/telemetry.ex
defmodule MyApp.Telemetry do
  require Logger

  def setup do
    :telemetry.attach("stripe-logger", [:stripe, :request, :stop], &handle_event/4, nil)
  end

  defp handle_event(_event, %{duration: duration}, meta, _config) do
    ms = System.convert_time_unit(duration, :native, :millisecond)
    retries = if meta.num_retries > 0, do: " (#{meta.num_retries} retries)", else: ""

    if meta[:error] do
      Logger.warning(
        "Stripe #{meta.method} #{meta.path} #{meta.http_status} in #{ms}ms#{retries}: #{meta.error.message}"
      )
    else
      Logger.info(
        "Stripe #{meta.method} #{meta.path} #{meta.http_status} in #{ms}ms#{retries} [#{meta.request_id}]"
      )
    end
  end
end
```

Call `MyApp.Telemetry.setup()` in your application's `start/2`.

## StatsD / Prometheus

Route telemetry to your metrics backend:

```elixir
:telemetry.attach("stripe-metrics", [:stripe, :request, :stop], fn
  _event, %{duration: duration}, meta, _config ->
    ms = System.convert_time_unit(duration, :native, :millisecond)

    # Normalize high-cardinality path segments
    resource =
      meta.path
      |> String.split("/")
      |> Enum.map(fn seg ->
        if String.match?(seg, ~r/^[a-z_]+$/) do seg else ":id" end
      end)
      |> Enum.join("/")

    :telemetry.execute([:my_app, :stripe, :request], %{duration_ms: ms}, %{
      method: meta.method,
      resource: resource,
      status: meta.http_status,
      retries: meta.num_retries
    })
end, nil)
```

## Dashboard Queries

Common things to track:

- **P99 latency** by endpoint — group by `resource`, measure `duration_ms`
- **Error rate** — count events where `error` is non-nil
- **Retry rate** — count events where `num_retries > 0`
- **Status code distribution** — group by `http_status`

The `request_id` field is especially useful for debugging — include it in
error logs so you can reference it in Stripe support tickets.
