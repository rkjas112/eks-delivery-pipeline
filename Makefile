PYTHON ?= python3
VENV := .venv
PIP := $(VENV)/bin/pip
PYTEST := $(VENV)/bin/pytest
RUFF := $(VENV)/bin/ruff

.PHONY: setup test lint verify run image smoke kind-up kind-deploy kind-down

setup:
	$(PYTHON) -m venv $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements-dev.txt

test:
	$(PYTEST)

lint:
	$(RUFF) check .

verify: lint test

run:
	APP_ENV=local APP_VERSION=dev $(VENV)/bin/flask --app wsgi:app run --host 0.0.0.0 --port 8080

image:
	docker build --build-arg BUILD_VERSION=local -t actions-lab:local .

smoke:
	./scripts/smoke-test.sh http://127.0.0.1:8080

kind-up:
	./scripts/kind-up.sh

kind-deploy:
	./scripts/kind-deploy.sh

kind-down:
	kind delete cluster --name actions-lab

