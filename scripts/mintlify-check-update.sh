#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <job-id>" >&2
  exit 1
fi

if [[ -z "${MINTLIFY_PROJECT_ID:-}" ]]; then
  echo "Missing MINTLIFY_PROJECT_ID" >&2
  exit 1
fi

if [[ -z "${MINTLIFY_ADMIN_API_KEY:-}" ]]; then
  echo "Missing MINTLIFY_ADMIN_API_KEY" >&2
  exit 1
fi

job_id="$1"

curl --silent --show-error --fail \
  "https://api.mintlify.com/v1/project/update-status/${job_id}" \
  -H "Authorization: Bearer ${MINTLIFY_ADMIN_API_KEY}" \
  -H "Content-Type: application/json"
