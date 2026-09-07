#!/usr/bin/env bash
set -euo pipefail

base_url="${1:-http://127.0.0.1:8080}"
response="$(curl --fail --silent --show-error "${base_url}/healthz")"

if [[ "$response" != *'"status":"healthy"'* ]]; then
  echo "Unexpected health response: $response" >&2
  exit 1
fi

echo "Smoke test passed: ${base_url}/healthz"

