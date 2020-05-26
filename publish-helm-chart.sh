#!/bin/bash -e
helm package ./charts/*
helm repo index --url https://gitkent.github.io/helm-charts/ .