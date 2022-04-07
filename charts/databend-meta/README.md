# Databend Meta Helm Chart

## Prerequisites

- Kubernetes 1.14+
- Helm v3+

## Install

To install the chart with release name `my-release`:
```
helm repo add datafuselabs https://charts.datafuselabs.com
helm install my-release datafuselabs/databend-meta --namespace databend --create-namespace
```
