# Changelog

## v0.1.2

### Enhancements

- Non-resource `$ref` schemas now generate typed inner modules instead of
  `map()`. 500 inner type modules (e.g. `Charge.BillingDetails`,
  `Price.Recurring`, `InvoiceLineItem.Period`) with full struct definitions and
  recursive `__inner_types__` for deep nesting.
- Resource `$ref` properties now include `__inner_types__` entries pointing to
  their standalone resource module (e.g. `Event` maps `"data"` to `EventData`).
  141 resource inner refs total.
- `{:expandable_ref, name}` type tag distinguishes expandable fields (string ID
  or object) from direct object refs in generated typespecs.
- Field overrides mechanism for fields the API returns but the spec omits
  (Charge.invoice).
- `Stripe.Deserializer.from_json/1` convenience for JSON string to typed struct.
- Integration test suite against stripe-mock validates no dropped fields across
  12+ key endpoints.

### Bug Fixes

- Fix `Charge.invoice` missing field — API returns it but the spec omits it.
  Added via field override with `{:expandable_ref, "invoice"}` type.

## v0.1.1

### Bug Fixes

- Fix `event.data` deserialization: `Webhook.construct_event/4` now returns
  `event.data` as a `%EventData{}` struct with `event.data.object` cast to the
  correct typed resource (e.g. `%Invoice{}`, `%Charge{}`). Previously,
  `event.data` was a raw string-keyed map.

## v0.1.0

Initial release.

### Features

- Full V1 + V2 API coverage (561 endpoints across 190 service modules)
- Auto-generated from the Stripe OpenAPI spec (v2166)
- Typed Elixir structs for 307 resource types with inner type deserialization
- V1 list pagination (`ListObject.auto_paging_stream/3`)
- V1 search pagination (`SearchResult.auto_paging_stream/3`)
- V2 URL-based pagination (`V2.ListObject.auto_paging_stream/3`)
- Webhook signature verification (`Webhook.construct_event/4`)
- `WebhookPlug` for Plug/Phoenix integration
- OAuth support (`authorize_url`, `token`, `deauthorize`)
- Multipart file uploads
- Streaming response support (`Client.stream_request/6`)
- Raw request support (`Client.raw_request/4`)
- Per-event typed modules (21 event types with nested data structs)
- Ownership-based test stubs (`Stripe.Test`)
- Retry with exponential backoff and jitter
- Telemetry events for request lifecycle
- Finch HTTP client (Mint + NimblePool)
- Zero-dep JSON via native `JSON` module (Elixir 1.18+)
