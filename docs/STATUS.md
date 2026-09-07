# STATUS — read this first

Last updated: **2026-09-08, ~05:00 IST** (end of session 1)

---

## Where we are

**Phase 01 of 10.** Watching done, workflow not yet written.

Blueprint (10 phases, ~6 weeks, ₹0 until phase 10):
https://claude.ai/code/artifact/0c8911c9-972b-4449-a8cd-4d5659c2b12a

```
 00  Contain & reset            ✅ DONE
 01  First workflow             ◑  watched, NOT written   ← HERE
 02  Build & publish image      ·
 03  Outputs, artifacts, cache  ·
 04  Environments & gates       ·
 05  Deploy to Kubernetes       ·   kind
 06  Helm                       ·   kind
 07  Argo CD / GitOps           ·   kind
 08  Observability (LGTM)       ·   kind
 09  Terraform + pipeline       ·   plan only
 10  Real EKS, one session      ·   ≈₹95
```

---

## THE NEXT ACTION

1. Round 2 of the quiz — the "why" questions (Round 1 done, see below).
2. Then **author `.github/workflows/ci.yml` from memory** — `ruff` + `pytest`
   on `pull_request`. ~15 lines. Brief: `exercises/01-pr-ci.md`.
3. Push it. It will fail. Read the log, fix it, record the root cause in
   `LEARNING_LOG.md`.

Run `actionlint` before pushing — it catches typos so failures stay conceptual.

---

## Course position

[Complete GitHub Actions Tutorial: Beginner to PRO](https://www.youtube.com/watch?v=U0S7ddSGaYI) — Cloud With VarJosh, 12h57m total.

| | |
|---|---|
| **Watched** | `00:44:57` → `02:13:31` (Lectures 01–02) — 89 min |
| **Next watch** | `02:13:31` → `04:07:55` (Lectures 03–04) — for phase 02 |
| **Total to watch** | ~7h45m of 12h57m. Skip the rest. |

Remaining plan: L03+L04 (phase 02) · L07+L08 (phase 03) · L10+L13 (phase 04) ·
L05 concepts only, `04:09:24`–`04:27:08` (phase 05). Then **zero more video** —
the course covers no Kubernetes, Helm, Argo CD, Terraform or observability.

---

## Session 1 — quiz results

Round 1, 6 questions. Four clean, two recovered under questioning.

| # | Topic | Result |
|---|---|---|
| 1 | Parallel jobs, ephemeral Azure runners | ✅ unprompted, incl. Azure detail |
| 2 | `needs:` = ordering, not data | ❌ → ✅ corrected, restated correctly |
| 3 | Why both `pull_request` and `push` | 🟡 → ✅ reasoned out semantic merge conflicts |
| 4 | `${{ }}` substituted by GitHub, not the shell | ✅ right agent; led into script injection |
| 5 | Why `actions/checkout` is needed | 🟡 thought it enabled other actions |
| 6 | Self-hosted runner risk on public repos | ✅ **unprompted** — fork PR runs attacker code |

**Weak spot to re-ask:** the *consequence* of ephemeral/isolated runners.
Q2, Q5 and Q6 are all the same fact — he knows jobs are isolated but does not
yet reflexively conclude "therefore data cannot flow between them."

**Level (two axes, never one number):** concepts ~3.5/10, hands-on 1/10 —
he has written zero YAML. He chronically under-rates himself.

---

## Environment (all set up, nothing to redo)

| | |
|---|---|
| Working dir | `~/Documents/Codex/2026-09-04/https-www-youtube-com-watch-v` |
| Public repo | https://github.com/rkjas112/eks-delivery-pipeline |
| Git auth | `gh auth setup-git` done — `git push` never prompts |
| `code` CLI | on PATH via `~/.zshrc` |
| actionlint | 1.7.12 via brew |
| VS Code ext | Actions · YAML · Docker · GitLens · Kubernetes · Terraform |

`reference/` holds Claude-written Kustomize overlays, IAM bootstrap scripts and
RBAC. **Gitignored, never published.** Open only AFTER authoring the equivalent
yourself.

---

## Standing decisions

- All 5 previous repos set **private** on 2026-09-08 — they were agent-generated
  and are not defensible. `eks-order-platform` is kept as a reference target.
- Résumé links the GitHub **profile only** — no project claims were made.
- Strategy is **competence-first**; the repo is a byproduct. Not portfolio-first.
- Claude scaffolds and does plumbing. **Rohit authors every workflow, chart and
  module.** No complete files handed over — that is how the dead repos happened.
- `/clear` at the start of each new phase. This file is the handoff.
