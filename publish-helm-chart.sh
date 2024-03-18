#!/bin/bash -e
helm package ./charts/*
helm repo index --url https://wiremock.github.io/helm-charts/ .