# Milestone 6 — production hardening

Treat this as a review checklist, not a tool-shopping list.

- Set explicit least-privilege workflow and job permissions.
- Pin third-party actions to immutable commit SHAs.
- Add dependency, secret, source, and container-image scanning.
- Generate an SBOM and provenance/attestation for the published image.
- Protect `main`; require CI and review before merge.
- Add `CODEOWNERS` for workflow and deployment paths.
- Document rollback and rehearse it.
- Add timeouts, concurrency, and cleanup for every risky job.
- Add post-deployment smoke tests and a useful failure summary.
- Never print secrets; test how masking behaves with a fake value.

Final drill: start from a blank workflow and reproduce the pipeline without notes.
Then explain every permission, trigger, cache key, artifact, output, and gate.

