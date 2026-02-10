#!/bin/bash
set -euo pipefail

# Download the latest stripe-ruby SDK master branch for parity comparison.
# Used by diff_ruby.sh and parity_test.exs.

RUBY_DIR="priv/stripe-ruby-master"
REPO="stripe/stripe-ruby"

echo "Fetching latest stripe-ruby master..."

# Clean previous copy
rm -rf "$RUBY_DIR"
mkdir -p "$RUBY_DIR"

# Download and extract master tarball (faster than git clone)
curl -sL "https://github.com/$REPO/archive/refs/heads/master.tar.gz" \
  | tar xz --strip-components=1 -C "$RUBY_DIR"

# Verify we got service files
SERVICE_COUNT=$(find "$RUBY_DIR/lib/stripe/services" -name "*_service.rb" 2>/dev/null | wc -l | tr -d ' ')
if [ "$SERVICE_COUNT" -eq 0 ]; then
  echo "ERROR: No service files found in downloaded Ruby SDK." >&2
  rm -rf "$RUBY_DIR"
  exit 1
fi

echo "Downloaded stripe-ruby master to $RUBY_DIR ($SERVICE_COUNT service files)"
