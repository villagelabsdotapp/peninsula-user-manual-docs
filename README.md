# Peninsula User Manual Docs

This repository hosts the Mintlify documentation for the Peninsula User Manual, including:

- Reusable Peninsula operating standards
- EBLG client profile and governance overlays
- Kevin requirement traceability
- Deployment and MCP integration guidance

## Site and Deployment

- Mintlify domain: `https://villagelabs-22b6513e.mintlify.app`
- Docs config: `docs.json`
- Main content path: `peninsula-manual/`

Mintlify deploys automatically from the linked GitHub repository and default branch.

## Local Preview

Use the Mintlify CLI from the repository root:

```bash
npx mint dev
```

## Manual Deployment Trigger via API

The scripts in `scripts/` call Mintlify's project update API:

- `scripts/mintlify-trigger-update.sh`: starts a deployment/update job
- `scripts/mintlify-check-update.sh`: checks an update job status

Required environment variables:

- `MINTLIFY_PROJECT_ID`
- `MINTLIFY_ADMIN_API_KEY`

Example:

```bash
export MINTLIFY_PROJECT_ID="your-project-id"
export MINTLIFY_ADMIN_API_KEY="your-admin-key"

./scripts/mintlify-trigger-update.sh
./scripts/mintlify-check-update.sh "<job-id>"
```

## GitHub Organization Handoff

Current deployment is linked to `cawdette/docs`.
Target steady state is a Village Labs org-owned repo (for example `villagelabsdotapp/<docs-repo>`), then re-link in Mintlify Git settings.

## References

- Mintlify docs: [https://www.mintlify.com/docs](https://www.mintlify.com/docs)
- Mintlify dashboard: [https://dashboard.mintlify.com](https://dashboard.mintlify.com)
