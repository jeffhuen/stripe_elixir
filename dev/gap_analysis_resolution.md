# TigerStripe vs. Ruby SDK Gap Analysis & Resolution

## Executive Summary
A comprehensive audit of the `tiger_stripe` OpenAPI spec (`spec3.sdk.json`) has identified **2,111** potential gaps. Comparison with the official Stripe Ruby SDK confirms that `tiger_stripe` relies heavily on generic maps where strongly typed structures are available and expected.

## 1. Dynamic Maps (`additionalProperties`)
**Findings**: 37 instances.
**Key Offender**: `currency_options` (found in Prices, Coupons, Shipping Rates, etc.).
**OpenAPI**:
```json
"currency_options": {
  "type": "object",
  "additionalProperties": { "$ref": "#/components/schemas/currency_option" }
}
```
**Ruby SDK**: Explicitly defines `CurrencyOptions` class and maps it via `inner_class_types`.
**TigerStripe Gap**: Generates `map()` (generic).
**Resolution**:
- **Critical Fix**: Update `openapi.ex` to detect `additionalProperties` with `$ref` and generate a typed map `%{String.t() => Type.t()}` and the corresponding inner struct.

## 2. Polymorphism (`oneOf`)
**Findings**: 329 instances (mostly V2 endpoints).
**Context**: Stripe V2 API uses `oneOf` heavily for event payloads and diverse resource types.
**TigerStripe Gap**: Generates generic maps or simple structs without handling the polymorphic nature (no union types or discriminators).
**Resolution**:
- **Strategic Fix**: The V2 API might require a different generation strategy. For now, surfacing these as `map()` is "safe" but lacks type safety. Long term, `tiger_stripe` needs a mechanism to generate Union Types (e.g. `Event.t() :: AccountUpdate.t() | ChargeFailed.t()`).

## 3. Generic Objects (Loose Schemas)
**Findings**: 21 instances.
**Examples**: `notification_event_data.object`, `v2.core.account...changes.before/after`.
**Context**: These are truly dynamic fields even in Stripe's model (e.g. "previous attributes" can be anything).
**Conclusion**: `map()` is the correct representation here. **Benign**.

## 4. Nullable Fields (`anyOf`)
**Findings**: ~1,700 instances.
**Pattern**: `anyOf: [{type: T}, {type: "null"}]`.
**Conclusion**: This is standard nullability. **Benign** (assuming `tiger_stripe` generates `T | nil`).

## Recommendations

### Phase 1: The "Low Hanging Fruit" (High Impact)
Fix **Dynamic Maps**.
- **Why**: It affects core V1 resources like Prices and Coupons. The fix is localized to the generator's type resolution logic.
- **Goal**: Ensure `currency_options` generates as `%{String.t() => Stripe.CurrencyOption.t()}`.

### Phase 2: V2 Support
Investigate **Polymorphism**.
- **Why**: Essential for partial/full V2 support.
- **Goal**: Generate proper union types or structs that can handle multiple shapes.
