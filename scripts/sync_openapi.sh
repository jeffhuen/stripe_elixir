#!/bin/bash
set -euo pipefail

# Download the Stripe OpenAPI spec from a specific release tag (not master).
# Version and channel files are only written after a successful download to prevent desync.
#
# Channels:
#   latest  — Unified GA spec (v1 + v2 endpoints). Default.
#   preview — Includes preview/beta endpoints.

SPEC_DIR="priv/openapi"
SPEC_FILE="$SPEC_DIR/spec3.sdk.json"
VERSION_FILE="OPENAPI_VERSION"
CHANNEL_FILE="OPENAPI_CHANNEL"

CHANNEL="${STRIPE_SPEC_CHANNEL:-latest}"

# Validate channel
if [[ "$CHANNEL" != "latest" && "$CHANNEL" != "preview" ]]; then
  echo "ERROR: Invalid STRIPE_SPEC_CHANNEL '$CHANNEL'. Must be 'latest' or 'preview'." >&2
  exit 1
fi

mkdir -p "$SPEC_DIR"

echo "Fetching latest release tag from stripe/openapi..."
TAG=$(curl -sL "https://api.github.com/repos/stripe/openapi/releases/latest" | grep '"tag_name"' | head -1 | cut -d'"' -f4)

# Guard: abort if TAG is empty or doesn't look like a version tag
if [ -z "$TAG" ] || ! echo "$TAG" | grep -qE '^v[0-9]+'; then
  echo "ERROR: Failed to fetch valid release tag (got: '$TAG')" >&2
  exit 1
fi

# File naming differs between channels:
#   latest:  openapi.spec3.sdk.json
#   preview: openapi.spec3.sdk.json
if [ "$CHANNEL" = "latest" ]; then
  REMOTE_FILE="openapi.spec3.sdk.json"
else
  REMOTE_FILE="openapi.spec3.sdk.json"
fi

DOWNLOAD_URL="https://raw.githubusercontent.com/stripe/openapi/$TAG/$CHANNEL/$REMOTE_FILE"

echo "Channel: $CHANNEL"
echo "Downloading spec from tag: $TAG"
echo "URL: $DOWNLOAD_URL"
curl -sL --fail "$DOWNLOAD_URL" -o "$SPEC_FILE"

# v2 guard: unified spec must contain v2 paths
V2_COUNT=$(grep -c '"/v2/' "$SPEC_FILE" || true)
if [ "$V2_COUNT" -eq 0 ]; then
  echo "ERROR: Spec contains 0 v2 paths — expected unified spec with v2 endpoints." >&2
  echo "Check that channel '$CHANNEL' serves the unified spec." >&2
  rm -f "$SPEC_FILE"
  exit 1
fi
echo "v2 path references found: $V2_COUNT"

# Write metadata only after successful download and validation
echo "$TAG" > "$VERSION_FILE"
echo "$CHANNEL" > "$CHANNEL_FILE"

echo "Downloaded spec version: $TAG (channel: $CHANNEL)"
echo "Spec saved to: $SPEC_FILE"
