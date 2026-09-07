# Milestone 0 — prove the application locally

Goal: understand what CI will automate before writing YAML.

1. Run `make setup` and `make verify`.
2. Run `make run`; in another terminal run `make smoke`.
3. Build the image with `make image`.
4. Run it with `docker run --rm -p 8080:8080 actions-lab:local` and smoke-test it.

Deliberate failure: change one expected value in `tests/test_app.py`, observe the
failure, then restore it.

Done when you can explain the difference between a unit test, lint check, image
build, and smoke test.

