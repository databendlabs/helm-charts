# Databend Query Helm Chart

## Prerequisites

- Kubernetes 1.14+
- Helm v3+

## Install

To install the chart with release name `my-release`:

```
helm repo add databend https://charts.databend.com
helm install my-release databend/databend-query --namespace databend --create-namespace
```

Note that for a production cluster, you will likely want to override the following parameters in [values.yaml](values.yaml) with your own values.

- `resources.requests.memory` and `resources.limit.memory` allocate memory resource to query pods in your cluster.
- `config.meta.address` indicates the grpc address of a [Databend Meta](../databend-meta) service.
- `config.storage.type` defaults to `fs` for testing only, `s3` is recommended in production.
- `config.storage.s3.accessKeyId` and `config.storage.s3.secretAccessKey` should be set when using `s3` storage, `config.storage.s3.endpointUrl` defaults to `https://s3.amazonaws.com`.

Then install the chart with release name `my-release`:

```
helm upgrade my-release databend/databend-query --namespace databend --create-namespace --values values.yaml
```

## Uninstall

To uninstall/delete a Helm release `my-release`:

```
helm delete my-release --namespace databend
```
