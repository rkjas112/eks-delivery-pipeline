# Milestone 5 — staging and production controls

Model this flow:

`PR CI -> publish immutable image -> staging -> smoke test -> approval -> production`

Use GitHub Environments named `staging` and `production`. For a completely free
setup, use a public learning repository; GitHub Free limits several environment
protection features to public repositories.

Requirements:

- Both stages consume the exact same image digest from the publish job.
- Production uses an environment approval rule.
- Production deployment has a concurrency group and cannot overlap.
- A failed staging smoke test prevents production.
- Deployment emits a useful summary containing environment, revision, and digest.

Because a GitHub-hosted runner cannot deploy persistently into your laptop's kind
cluster, first implement deployment as a safe simulation/dry run. Later, compare
these two real options: a self-hosted runner on your machine (security tradeoffs) or
a cloud target (cost tradeoffs). Do not expose your local Kubernetes API publicly.

Interview check: explain build-once/deploy-many and how approvals change secret
availability.

