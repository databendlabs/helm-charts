# Databend Meta Helm Chart

## Prerequisites

- Kubernetes 1.14+
- Helm v3+

## Install

To install the chart with release name `my-release`:
```
helm repo add databend https://charts.databend.rs
helm install my-release databend/databend-meta --namespace databend --create-namespace
```
