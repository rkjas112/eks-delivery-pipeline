#!/usr/bin/env bash
set -euo pipefail

cluster_name="actions-lab"

for command_name in docker kind kubectl; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    echo "Missing required command: $command_name" >&2
    exit 1
  fi
done

if ! docker info >/dev/null 2>&1; then
  echo "Docker is not running. Start Docker Desktop and try again." >&2
  exit 1
fi

if kind get clusters | grep -qx "$cluster_name"; then
  echo "kind cluster '$cluster_name' already exists"
else
  kind create cluster --name "$cluster_name" --config infra/kind/cluster.yaml
fi

kubectl cluster-info --context "kind-${cluster_name}"

