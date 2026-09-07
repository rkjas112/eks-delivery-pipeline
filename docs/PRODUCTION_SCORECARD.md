# Production-readiness scorecard

Score each row 0 (missing), 1 (partial), or 2 (defensible). Target 24/30 before you
call the capstone production-grade.

| Area | Evidence to show |
|---|---|
| Repeatable CI | lint, test, build, smoke test on every PR |
| Immutable release | commit-SHA tag and recorded image digest |
| Least privilege | explicit `permissions` and no long-lived credential |
| Supply chain | pinned actions, scan, SBOM, provenance |
| Separation | staging and production environments |
| Safe promotion | the same digest promoted after automated tests |
| Human control | protected production approval |
| Deployment safety | readiness, rolling update, timeout, rollback |
| Reliability | resource requests/limits and health endpoints |
| Concurrency | stale CI cancelled; production serialized |
| Traceability | run summary links revision, image, and environment |
| Observability | useful application/deployment logs and failure output |
| Repository governance | protected main and CODEOWNERS |
| Documentation | runbook, architecture, and recovery instructions |
| Demonstration | five-minute live walkthrough and failure recovery |

