# Milestone 3 — reuse, artifacts, matrix, and outputs

Create one reusable workflow and call it from CI.

Requirements:

- Accept a Python version as an input.
- Return a meaningful output to the caller.
- Test against two Python versions with a matrix.
- Upload a small test report only when useful; set short retention.
- Do not upload dependency folders as artifacts—use caching for dependencies.
- Pin third-party actions to full commit SHAs and leave the release tag in a comment.

Interview check: explain cache versus artifact, and composite action versus reusable
workflow.

