# Milestone 4 — deploy locally to Kubernetes

This milestone uses Docker Desktop + kind, so there is no cloud bill.

1. Run `make kind-up`.
2. Run `make kind-deploy`.
3. Port-forward the service and run `make smoke`.
4. Inspect pods, events, logs, Deployment, ReplicaSet, and Service.
5. Change the application, build a new tag, update the manifest, and watch a rollout.
6. Deploy a deliberately broken image tag and perform a rollback.

Your implementation tasks:

- Replace the fixed local image with a Kustomize image override.
- Add a PodDisruptionBudget.
- Add sensible rolling-update settings.
- Decide whether an HPA is meaningful on a single-node learning cluster; justify it.
- Convert the base manifests to a small Helm chart only after you understand them.

Interview check: trace a request from Service to Pod and explain readiness versus
liveness.

