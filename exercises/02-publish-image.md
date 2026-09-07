# Milestone 2 — publish one immutable image

Create `.github/workflows/publish.yml` yourself.

Requirements:

- Trigger only after changes reach `main`; also permit manual execution.
- Re-run the quality gates before publishing.
- Authenticate to GitHub Container Registry with `GITHUB_TOKEN`, not a PAT.
- Request only the permissions required to read code and write a package.
- Tag the image with the full commit SHA. A friendly `main` tag may be added, but
  deployment must use an immutable SHA or digest.
- Build once and publish once.
- Capture the resulting image digest as a job output.
- Add OCI labels connecting the image to its source repository and revision.

Hardening tasks:

- Pin the base image by digest and explain the update tradeoff.
- Compare the image before/after a multi-stage build; keep the clearer version.
- Scan the filesystem and image with a free open-source scanner of your choice.

Interview check: explain why `latest` is a poor production deployment identifier.

