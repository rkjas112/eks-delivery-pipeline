# Zero-cost guardrails

Use this project without creating a cloud bill:

- Prefer a **public learning repository** with no real credentials or proprietary
  code. Standard GitHub-hosted runners are free for public repositories.
- Use only standard runners such as `ubuntu-latest`; do not select larger runners.
- Publish a **public** practice image to GHCR, or skip publishing and keep images
  local. Never put secrets inside an image.
- Run the deployment target locally with Docker Desktop, kind, kubectl, and Helm.
- Use the repository `GITHUB_TOKEN`; do not buy or provision a cloud account.
- Keep artifacts small with short retention, and delete unused package versions.
- Do not attach a payment method merely for this lab. If you use a private repo,
  stay within the included quota and configure a zero-dollar budget/alerts where
  GitHub permits it.

Never commit real credentials. This repo is designed to use none.

