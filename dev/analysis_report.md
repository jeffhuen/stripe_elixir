# Analysis of `tiger_stripe` Type Generation

## Executive Summary
The `tiger_stripe` library fails to generate typed structures for map-like fields defined with `additionalProperties` in the OpenAPI specification. This results in generic `map()` types in Elixir where the Stripe Ruby SDK provides fully typed classes and objects.

## Findings

### 1. Missing Type Generation for `additionalProperties`
The `tiger_stripe` generator logic in `lib/stripe/generator/openapi.ex` (lines 474-476) explicitly defaults any `type: object` schema without `properties` to a generic map:

```elixir
defp do_resolve_type(_field_name, %{"type" => "object"}, _schema_index) do
  {:map, %{}}
end
```

This completely ignores the `additionalProperties` field in the OpenAPI spec, which often contains a schema reference defining the value type of the map.

### 2. Discrepancy with Ruby SDK
We compared the `Price` resource between `tiger_stripe` and the official Stripe Ruby SDK.

**OpenAPI Definition for `currency_options`**:
```json
"currency_options": {
  "type": "object",
  "additionalProperties": {
    "$ref": "#/components/schemas/currency_option"
  },
  "description": "Prices defined in each available currency option..."
}
```

**Ruby SDK (`price.rb`)**:
The Ruby SDK correctly identifies `currency_options` as a map of `CurrencyOptions` objects:
```ruby
class CurrencyOptions < ::Stripe::StripeObject
  # ... attributes ...
end

def self.inner_class_types
  @inner_class_types = {
    currency_options: CurrencyOptions,
    # ...
  }
end
```

**`tiger_stripe` (`price.ex`)**:
The generated Elixir code uses a generic map and fails to generate the inner module:
```elixir
@type t :: %__MODULE__{
  # ...
  currency_options: map() | nil,
  # ...
}

def __inner_types__ do
  %{
    # currency_options is MISSING
    "custom_unit_amount" => __MODULE__.CustomUnitAmount,
    # ...
  }
end
```

### 3. Impact
- **Loss of Type Safety**: Users working with `currency_options` (and similar fields like `tiers` if they use keys, or simple `metadata` which is fine as map) lose struct access and compilation checks.
- **Inconsistent API**: Nested data structures are returned as plain maps instead of Structs, requiring manual traversal and lacking helper functions.
- **Documentation Gaps**: The generated documentation for `currency_options` simply says `map()` without hints about the structure of the values.

## Recommendation
The generator in `openapi.ex` must be updated to handle `additionalProperties`.
1.  Detect `additionalProperties` when `type` is `object`.
2.  If `additionalProperties` contains a `$ref` or a complex schema, resolve it to an inner type.
3.  Generate the map type as `%{String.t() => InnerType.t()}` (or similar).
4.  Generate the inner struct module (e.g. `Stripe.Resources.Price.CurrencyOptions`).
5.  Update `__inner_types__` to include this mapping so deserialization works correctly.
