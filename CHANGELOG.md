# Changelog

All notable changes to this project are documented in this file.

The format is based on [Common Changelog](https://common-changelog.org/).

## [0.1.2] - 2026-02-10

### Added

- Add `Stripe.Deserializer.from_json/1` for decoding JSON strings into typed structs ([b0b2acf])
- Add 500 typed inner modules for nested API objects (e.g. `Charge.BillingDetails`, `Price.Recurring`, `InvoiceLineItem.Period`) replacing untyped `map()` ([a81f7bf])
- Add field override mechanism for API fields missing from the OpenAPI spec ([a81f7bf])
- Add integration test suite against stripe-mock for field coverage validation ([a81f7bf])

### Fixed

- Fix `Charge.invoice` returning `nil` — field was absent from generated struct because the OpenAPI spec omits it ([a81f7bf])
- Fix nested object deserialization losing type information — inner types now recurse through `__inner_types__` at all nesting depths ([a81f7bf])

## [0.1.1] - 2025-02-07

### Fixed

- Fix `event.data` deserialization: `Webhook.construct_event/4` now returns `event.data` as a typed `%EventData{}` struct instead of a raw string-keyed map ([1d30ea8])

## [0.1.0] - 2025-02-06

*Initial release.*

### Added

- Add full V1 + V2 API coverage (561 endpoints across 190 service modules)
- Add typed Elixir structs for 307 resource types with inner type deserialization
- Add auto-paging pagination for V1 lists, search results, and V2 lists
- Add webhook signature verification via `Webhook.construct_event/4`
- Add `WebhookPlug` for Plug/Phoenix integration
- Add OAuth support (`authorize_url`, `token`, `deauthorize`)
- Add multipart file uploads and streaming response support
- Add per-event typed modules (21 event types with nested data structs)
- Add process-scoped test stubs via `Stripe.Test`
- Add retry with exponential backoff, jitter, and idempotency keys
- Add telemetry events for request lifecycle observability
- Add Finch HTTP client with connection pooling (Mint + NimblePool)

[0.1.2]: https://github.com/jeffhuen/tiger_stripe/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/jeffhuen/tiger_stripe/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/jeffhuen/tiger_stripe/releases/tag/v0.1.0
[b0b2acf]: https://github.com/jeffhuen/tiger_stripe/commit/b0b2acf
[a81f7bf]: https://github.com/jeffhuen/tiger_stripe/commit/a81f7bf
[1d30ea8]: https://github.com/jeffhuen/tiger_stripe/commit/1d30ea8
