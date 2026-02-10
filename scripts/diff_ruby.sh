#!/bin/bash
set -euo pipefail

# Compare generated Elixir SDK against Ruby SDK reference.
# Compares full relative service paths (not basenames).
# Exits non-zero on unexpected gaps.

RUBY_DIR="priv/stripe-ruby-master/lib/stripe"
ELIXIR_SERVICES="lib/stripe/services"
ELIXIR_RESOURCES="lib/stripe/resources"
ELIXIR_PARAMS="lib/stripe/params"

echo "=== Stripe SDK Parity Report ==="
echo ""

# Count services (excluding aggregate/namespace files, recursively)
ruby_services=$(find "$RUBY_DIR/services" -name "*_service.rb" -not -name "v1_services.rb" -not -name "v2_services.rb" | wc -l | tr -d ' ')
elixir_services=$(find "$ELIXIR_SERVICES" -name "*_service.ex" -not -name "v1.ex" -not -name "v2.ex" | wc -l | tr -d ' ')
echo "Services:  Ruby=$ruby_services  Elixir=$elixir_services"

# Count resources
ruby_resources=$(find "$RUBY_DIR/resources" -name "*.rb" | wc -l | tr -d ' ')
elixir_resources=$(find "$ELIXIR_RESOURCES" -name "*.ex" | wc -l | tr -d ' ')
echo "Resources: Ruby=$ruby_resources  Elixir=$elixir_resources"

# Count params (Ruby doesn't have separate params files, they're inline)
elixir_params=$(find "$ELIXIR_PARAMS" -name "*.ex" | wc -l | tr -d ' ')
echo "Params:    Elixir=$elixir_params"

# Count events
ruby_events=$(find "$RUBY_DIR/events" -name "*.rb" 2>/dev/null | wc -l | tr -d ' ')
echo "Events:    Ruby=$ruby_events  (V2-only, not in public spec)"

echo ""

# -- Path-level service comparison ------------------------------------------
# Compare full relative paths (not basenames) to catch package mismatches.
# Exclude aggregate/namespace files: v1_services.rb/v2_services.rb (Ruby),
# v1.ex/v2.ex (Elixir).

ruby_service_paths=$(find "$RUBY_DIR/services" -name "*_service.rb" \
  -not -name "v1_services.rb" -not -name "v2_services.rb" \
  | sed "s|^$RUBY_DIR/services/||" | sed 's/\.rb$//' | sort)

elixir_service_paths=$(find "$ELIXIR_SERVICES" -name "*_service.ex" \
  -not -name "v1.ex" -not -name "v2.ex" \
  | sed "s|^$ELIXIR_SERVICES/||" | sed 's/\.ex$//' | sort)

missing_in_elixir=$(comm -23 <(echo "$ruby_service_paths") <(echo "$elixir_service_paths"))
extra_in_elixir=$(comm -13 <(echo "$ruby_service_paths") <(echo "$elixir_service_paths"))

exit_code=0

echo "--- Missing in Elixir ---"
if [ -n "$missing_in_elixir" ]; then
  missing_count=$(echo "$missing_in_elixir" | wc -l | tr -d ' ')
  echo "$missing_in_elixir" | sed 's/^/  /'
  echo "($missing_count missing)"
  exit_code=1
else
  echo "  (none)"
fi

echo ""
echo "--- Extra in Elixir ---"
if [ -n "$extra_in_elixir" ]; then
  extra_count=$(echo "$extra_in_elixir" | wc -l | tr -d ' ')
  echo "$extra_in_elixir" | sed 's/^/  /'
  echo "($extra_count extra)"
  exit_code=1
else
  echo "  (none)"
fi

echo ""
echo "--- Summary ---"
total_elixir=$((elixir_services + elixir_resources + elixir_params))
echo "Total generated Elixir files: $total_elixir"

if [ $exit_code -ne 0 ]; then
  echo ""
  echo "FAIL: Service path parity gaps detected."
  exit 1
else
  echo "OK: Service paths match 1:1 (${ruby_services}/${ruby_services})."
fi
