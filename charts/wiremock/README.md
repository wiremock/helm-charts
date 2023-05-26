# wiremock-helm

Helm Chart for WireMock deployment to Kubernetes.
It allows deploying the official [WireMock Docker images](https://github.com/wiremock/wiremock-docker)
and also other charts that extend it,
in particular [holomekc/wiremock](https://github.com/holomekc/wiremock) with embedded UI.

# Quick Start

## Pre-requisites

1. [Install Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
2. [Install helm](https://helm.sh/docs/intro/install/)

## Deploy WireMock

Install WireMock using the Helm chart

```bash
helm upgrade --install wiremock ./charts/wiremock
```

Setup port forwarding

```bash
$ export POD_NAME=$(kubectl get pods --namespace {{ .Release.Namespace }} -l "app.kubernetes.io/name={{ include "wiremock.name" . }},app.kubernetes.io/instance={{ .Release.Name }}" -o jsonpath="{.items[0].metadata.name}")

$ kubectl port-forward $POD_NAME 8080:{{ .Values.service.internalPort}}
```

## Verify Wiremock deployment

To verify erifying a response using Wiremock, run

```bash
$ curl -X POST http://127.0.0.1:8080/v1/hello
```

To check the web app when using `holomekc/wiremock`, visit http://127.0.0.1:8080/__admin/webapp on your browser.
    
# References:

- [WireMock Java Library](https://github.com/tomakehurst/wiremock)
- [Official WireMock Docker Image](https://github.com/wiremock/wiremock-docker)
- [WireMock extended with Web UI](https://github.com/holomekc/wiremock), a project by [(@holomekc]https://github.com/holomekc)
