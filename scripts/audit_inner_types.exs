# Audit: comprehensive check of inner type coverage vs spec
#
# Usage: mix run scripts/audit_inner_types.exs

alias Stripe.Generator.OpenAPI

raw = File.read!("priv/openapi/spec3.sdk.json") |> RustyJson.decode!()
schemas = raw["components"]["schemas"] || %{}

resource_ids =
  schemas
  |> Enum.filter(fn {_k, v} -> is_map(v) && Map.has_key?(v, "x-stripeResource") end)
  |> MapSet.new(fn {k, _} -> k end)

IO.puts("=== Spec overview ===")
IO.puts("Total schemas: #{map_size(schemas)}")
IO.puts("Resource schemas: #{MapSet.size(resource_ids)}")
IO.puts("")

# ── Part 1: Non-resource $ref coverage ──────────────────────────────────────

# Collect every $ref target used in resource property schemas
ref_to_name = fn "#/components/schemas/" <> name -> name; ref -> ref end

collect_property_refs = fn props ->
  for {_field, prop} <- props || %{},
      ref = prop["$ref"],
      ref != nil do
    ref_to_name.(ref)
  end
end

collect_anyof_refs = fn props ->
  for {_field, prop} <- props || %{},
      variants = prop["anyOf"] || prop["oneOf"] || [],
      v <- variants,
      ref = v["$ref"],
      ref != nil do
    ref_to_name.(ref)
  end
end

all_direct_refs =
  schemas
  |> Enum.filter(fn {_k, v} -> is_map(v) && Map.has_key?(v, "x-stripeResource") end)
  |> Enum.flat_map(fn {_k, s} ->
    collect_property_refs.(s["properties"]) ++ collect_anyof_refs.(s["properties"])
  end)
  |> Enum.uniq()
  |> Enum.sort()

non_resource_refs =
  Enum.reject(all_direct_refs, &MapSet.member?(resource_ids, &1))

categorized =
  Enum.group_by(non_resource_refs, fn name ->
    schema = Map.get(schemas, name, %{})
    cond do
      is_map(schema["properties"]) and map_size(schema["properties"]) > 0 -> :has_props
      is_list(schema["allOf"]) -> :allof_only
      is_map(schema["properties"]) and map_size(schema["properties"]) == 0 -> :empty_props
      schema == %{} -> :missing_schema
      true -> :other
    end
  end)

IO.puts("=== Non-resource $ref targets from resource properties ===")
IO.puts("Total unique: #{length(non_resource_refs)}")
for {cat, items} <- Enum.sort(categorized) do
  IO.puts("  #{cat}: #{length(items)}")
end
IO.puts("")

# Show the edge cases
for cat <- [:allof_only, :empty_props, :missing_schema, :other],
    items = Map.get(categorized, cat, []),
    items != [] do
  IO.puts("  #{cat} schemas:")
  for name <- items do
    schema = Map.get(schemas, name, %{})
    keys = Map.keys(schema) |> Enum.sort() |> Enum.join(", ")
    IO.puts("    #{name} (keys: #{keys})")
  end
end

# ── Part 2: Verify generated output ─────────────────────────────────────────

IO.puts("=== Generated resource inner type counts ===")
spec = OpenAPI.parse("priv/openapi/spec3.sdk.json")

resources_with_inners =
  spec.resources
  |> Enum.filter(& &1.is_primary)
  |> Enum.filter(fn r -> map_size(r.inner_types) > 0 end)

resources_with_ref_inners =
  spec.resources
  |> Enum.filter(& &1.is_primary)
  |> Enum.filter(fn r -> map_size(r.resource_inner_refs) > 0 end)

total_inner_types =
  spec.resources
  |> Enum.filter(& &1.is_primary)
  |> Enum.map(fn r -> map_size(r.inner_types) end)
  |> Enum.sum()

total_ref_inners =
  spec.resources
  |> Enum.filter(& &1.is_primary)
  |> Enum.map(fn r -> map_size(r.resource_inner_refs) end)
  |> Enum.sum()

IO.puts("Resources with inner type modules: #{length(resources_with_inners)}")
IO.puts("Resources with resource inner refs: #{length(resources_with_ref_inners)}")
IO.puts("Total inner type modules: #{total_inner_types}")
IO.puts("Total resource inner refs: #{total_ref_inners}")
IO.puts("Combined __inner_types__ entries: #{total_inner_types + total_ref_inners}")
IO.puts("")

# Count nested inner types (inner types that themselves have inner types)
nested_count =
  spec.resources
  |> Enum.filter(& &1.is_primary)
  |> Enum.flat_map(fn r ->
    count_nested = fn count_nested, inners ->
      for {_, inner} <- inners,
          nested = inner[:inner_types] || inner.inner_types,
          is_map(nested),
          map_size(nested) > 0 do
        map_size(nested) + Enum.sum(for {_, n} <- nested, do: elem({count_nested.(count_nested, n[:inner_types] || %{})}, 0) |> then(fn _ -> 0 end))
      end
    end
    for {_, inner} <- r.inner_types do
      nested = inner[:inner_types] || inner.inner_types
      if is_map(nested), do: map_size(nested), else: 0
    end
  end)
  |> Enum.sum()

IO.puts("Nested inner types (2+ levels deep): #{nested_count}")
IO.puts("")

# ── Part 3: Spot check specific high-value resources ────────────────────────

IO.puts("=== Spot checks ===")

spot_checks = [
  {"charge", ["billing_details", "fraud_details", "outcome", "payment_method_details",
               "refunds", "transfer_data"]},
  {"price", ["recurring", "custom_unit_amount", "transform_quantity", "tiers"]},
  {"line_item", ["period", "parent", "pricing", "taxes"]},
  {"invoice", ["parent", "status_transitions", "lines", "payments", "automatic_tax",
               "payment_settings", "rendering"]},
  {"event", ["request"]},
  {"payment_intent", ["amount_details", "automatic_payment_methods", "next_action",
                       "payment_method_options"]},
  {"subscription", ["automatic_tax", "cancellation_details", "invoice_settings",
                     "pause_collection", "payment_settings", "pending_update"]},
  {"checkout.session", ["after_expiration", "consent", "custom_text", "invoice_creation",
                        "payment_method_options", "phone_number_collection", "shipping_cost",
                        "shipping_options", "tax_id_collection", "total_details"]},
  {"customer", ["invoice_settings", "tax"]},
  {"payment_method", ["card", "us_bank_account"]},
  {"setup_intent", ["next_action", "payment_method_options"]},
  {"refund", ["destination_details", "next_action"]},
]

for {schema_id, expected_inners} <- spot_checks do
  resource = Enum.find(spec.resources, fn r -> r.schema_id == schema_id && r.is_primary end)
  if resource do
    all_keys = Map.keys(resource.inner_types) ++ Map.keys(resource.resource_inner_refs)
    fields = MapSet.new(resource.properties, & &1.name)
    missing_inners = Enum.filter(expected_inners, fn name -> name not in all_keys end)
    missing_fields = Enum.filter(expected_inners, fn name -> not MapSet.member?(fields, name) end)

    status = if missing_inners == [] and missing_fields == [], do: "✓", else: "✗"
    IO.puts("#{status} #{schema_id}: #{map_size(resource.inner_types)} inners + #{map_size(resource.resource_inner_refs)} refs")
    if missing_inners != [] do
      IO.puts("  MISSING inner types: #{Enum.join(missing_inners, ", ")}")
    end
    if missing_fields != [] do
      IO.puts("  MISSING fields: #{Enum.join(missing_fields, ", ")}")
    end
  else
    IO.puts("? #{schema_id}: not found as primary resource")
  end
end
IO.puts("")

# ── Part 4: Find resources with ZERO inner types that probably should have some ──

IO.puts("=== Resources with 5+ properties but 0 inner types (potential gaps) ===")
suspicious =
  spec.resources
  |> Enum.filter(& &1.is_primary)
  |> Enum.filter(fn r ->
    map_size(r.inner_types) == 0 and
    map_size(r.resource_inner_refs) == 0 and
    length(r.properties) >= 5
  end)
  |> Enum.sort_by(fn r -> -length(r.properties) end)
  |> Enum.take(15)

for r <- suspicious do
  IO.puts("  #{r.schema_id} (#{length(r.properties)} fields, 0 inner types)")
end
