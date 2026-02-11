defmodule Stripe.Integration.FieldCoverageTest do
  @moduledoc """
  Compare stripe-mock JSON responses against our generated struct fields.

  For each key endpoint, fetches the raw JSON and checks that every key in the
  response has a corresponding field in our struct.  Keys present in the JSON
  but absent from the struct are "dropped fields" — the exact class of bug
  that caused the Charge.invoice crash.

  Requires stripe-mock on localhost:12111:

      brew install stripe/stripe-mock/stripe-mock
      stripe-mock

  Run with:

      mix test --include integration
  """
  use ExUnit.Case

  alias Stripe.Resources.Dispute

  @moduletag :integration

  @base "http://localhost:12111"
  @headers [
    {"authorization", "Bearer sk_test_123"},
    {"content-type", "application/x-www-form-urlencoded"}
  ]

  setup_all do
    case :gen_tcp.connect(~c"localhost", 12_111, [], 1_000) do
      {:ok, socket} ->
        :gen_tcp.close(socket)
        :ok

      {:error, _} ->
        raise "stripe-mock not running on localhost:12111"
    end
  end

  # Endpoints to check: {method, path, module, description}
  # POST endpoints that create objects give us the richest responses.
  @endpoints [
    {:post, "/v1/charges", Stripe.Resources.Charge,
     params: "amount=2000&currency=usd&source=tok_visa"},
    {:get, "/v1/customers", nil, label: "Customer list"},
    {:post, "/v1/customers", Stripe.Resources.Customer, params: "email=test@example.com"},
    {:post, "/v1/invoices", Stripe.Resources.Invoice,
     params: "customer=cus_123&auto_advance=false"},
    {:post, "/v1/payment_intents", Stripe.Resources.PaymentIntent,
     params: "amount=1000&currency=usd"},
    {:post, "/v1/subscriptions", Stripe.Resources.Subscription,
     params: "customer=cus_123&items[0][price]=price_123"},
    {:post, "/v1/prices", Stripe.Resources.Price,
     params: "unit_amount=1000&currency=usd&recurring[interval]=month&product=prod_123"},
    {:get, "/v1/events", nil, label: "Event list"},
    {:post, "/v1/refunds", Stripe.Resources.Refund, params: "charge=ch_123"},
    {:post, "/v1/setup_intents", Stripe.Resources.SetupIntent, params: ""},
    {:post, "/v1/checkout/sessions", Stripe.Resources.Checkout.Session,
     params:
       "mode=payment&success_url=https://example.com&line_items[0][price]=price_123&line_items[0][quantity]=1"},
    {:post, "/v1/payment_methods", Stripe.Resources.PaymentMethod,
     params:
       "type=card&card[number]=4242424242424242&card[exp_month]=12&card[exp_year]=2030&card[cvc]=123"}
  ]

  for {method, path, module, opts} <- @endpoints, module != nil do
    label = opts[:label] || "#{method |> to_string() |> String.upcase()} #{path}"

    test "#{label} — no dropped fields in #{inspect(module)}" do
      method = unquote(method)
      path = unquote(path)
      module = unquote(module)
      params = unquote(opts[:params]) || ""

      json_map = fetch_raw(method, path, params)

      if json_map do
        struct_keys =
          module.__struct__()
          |> Map.keys()
          |> List.delete(:__struct__)
          |> MapSet.new(&Atom.to_string/1)

        json_keys = MapSet.new(Map.keys(json_map))

        dropped = MapSet.difference(json_keys, struct_keys)
        # "object" is always present and handled by the deserializer, not struct
        dropped = MapSet.delete(dropped, "object")

        if MapSet.size(dropped) > 0 do
          sorted = dropped |> MapSet.to_list() |> Enum.sort()

          flunk("""
          #{inspect(module)} is missing fields returned by the API:

            #{Enum.join(sorted, ", ")}

          These keys are in the stripe-mock JSON but not in the struct.
          Add them via field_overrides in overrides.ex or investigate
          why the spec doesn't include them.
          """)
        end
      end
    end
  end

  # -- Dispute: needs a charge ID first, so can't use the macro loop ----------

  test "POST /v1/disputes — no dropped fields in Dispute" do
    # Create a charge first to get a dispute-able charge ID
    charge_id = fetch_id(:post, "/v1/charges", "amount=2000&currency=usd&source=tok_visa")

    if charge_id do
      json_map = fetch_raw(:post, "/v1/disputes/#{charge_id}/close", "")

      if json_map do
        struct_keys =
          Dispute.__struct__()
          |> Map.keys()
          |> List.delete(:__struct__)
          |> MapSet.new(&Atom.to_string/1)

        json_keys = MapSet.new(Map.keys(json_map))
        dropped = MapSet.difference(json_keys, struct_keys)
        dropped = MapSet.delete(dropped, "object")

        if MapSet.size(dropped) > 0 do
          sorted = dropped |> MapSet.to_list() |> Enum.sort()

          flunk("""
          #{inspect(Dispute)} is missing fields returned by the API:

            #{Enum.join(sorted, ", ")}

          These keys are in the stripe-mock JSON but not in the struct.
          Add them via field_overrides in overrides.ex or investigate
          why the spec doesn't include them.
          """)
        end
      end
    end
  end

  # -- List endpoints: extract first item and check its struct ----------------

  for {_method, path, nil, opts} <- @endpoints do
    label = opts[:label] || path

    test "#{label} — list items have no dropped fields" do
      path = unquote(path)
      json_map = fetch_raw(:get, path, "limit=3")

      if json_map && is_list(json_map["data"]) && json_map["data"] != [] do
        item = hd(json_map["data"])
        object_name = item["object"]

        module =
          Map.get(
            Stripe.ObjectTypes.object_name_to_module(),
            object_name
          )

        if module do
          struct_keys =
            module.__struct__()
            |> Map.keys()
            |> List.delete(:__struct__)
            |> MapSet.new(&Atom.to_string/1)

          json_keys = MapSet.new(Map.keys(item))
          dropped = MapSet.difference(json_keys, struct_keys)
          dropped = MapSet.delete(dropped, "object")

          if MapSet.size(dropped) > 0 do
            sorted = dropped |> MapSet.to_list() |> Enum.sort()

            flunk("""
            #{inspect(module)} (from #{object_name} list) is missing fields:

              #{Enum.join(sorted, ", ")}
            """)
          end
        end
      end
    end
  end

  # -- Helpers ----------------------------------------------------------------

  defp fetch_raw(method, path, params) do
    url = @base <> path

    {url, body} =
      case method do
        :get ->
          sep = if String.contains?(url, "?"), do: "&", else: "?"
          {url <> sep <> params, ""}

        :post ->
          {url, params}
      end

    req_method = method |> to_string() |> String.upcase()

    case Finch.build(req_method, url, @headers, body)
         |> Finch.request(Stripe.Finch) do
      {:ok, %{status: status, body: resp_body}} when status in 200..299 ->
        case JSON.decode(resp_body) do
          {:ok, data} -> data
          _ -> nil
        end

      _ ->
        nil
    end
  end

  defp fetch_id(method, path, params) do
    case fetch_raw(method, path, params) do
      %{"id" => id} -> id
      _ -> nil
    end
  end
end
