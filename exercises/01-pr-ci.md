# Milestone 1 — pull-request CI

Create `.github/workflows/ci.yml` yourself.

Requirements:

- Trigger on pull requests and pushes to `main`.
- Use a standard Ubuntu GitHub-hosted runner.
- Grant only `contents: read` permission.
- Check out the repository and set up Python.
- Cache downloaded Python dependencies.
- Install development dependencies.
- Run lint and unit tests as separate, clearly named steps.
- Build the Docker image but do not push it.
- Start the container, call `/healthz`, and always clean up the container.
- Add a concurrency group that cancels obsolete runs for the same branch/PR.

Experiments you must perform:

1. Break linting and identify the failed step.
2. Break a test and identify the failed assertion.
3. Break the container port and diagnose the smoke-test failure.
4. Push two commits quickly and observe concurrency cancellation.

Interview check: explain why PR workflows should not receive deployment secrets.

