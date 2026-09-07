#!/usr/bin/env bash
set -euo pipefail

cluster_name="actions-lab"
image_name="actions-lab:local"

docker build --build-arg BUILD_VERSION="$(git rev-parse --short HEAD 2>/dev/null || echo local)" -t "$image_name" .
kind load docker-image "$image_name" --name "$cluster_name"
kubectl apply -k deploy/k8s/base
kubectl rollout status deployment/actions-lab --timeout=120s

echo "Deployment is ready. In another terminal run:"
echo "kubectl port-forward service/actions-lab 8080:80"
echo "Then run: make smoke"

