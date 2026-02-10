#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${MINTLIFY_PROJECT_ID:-}" ]]; then
  echo "Missing MINTLIFY_PROJECT_ID" >&2
  exit 1
fi

if [[ -z "${MINTLIFY_ADMIN_API_KEY:-}" ]]; then
  echo "Missing MINTLIFY_ADMIN_API_KEY" >&2
  exit 1
fi

curl --silent --show-error --fail \
  -X POST "https://api.mintlify.com/v1/project/update/${MINTLIFY_PROJECT_ID}" \
  -H "Authorization: Bearer ${MINTLIFY_ADMIN_API_KEY}" \
  -H "Content-Type: application/json"
