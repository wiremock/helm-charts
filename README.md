![CI](https://github.com/gitkent/helm-charts/actions/workflows/ci.yaml/badge.svg)

# helm-charts
Helm Chart for deployment to Kubernetes.

# Quick Start
## Pre-requisites
1. [Install minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
2. [Install helm](https://helm.sh/docs/intro/install/)
3. Deploy Wiremock
    ```bash
    helm upgrade --install <release_name> ./chart/<chart_name>
    ```