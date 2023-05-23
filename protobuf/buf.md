# K8SGPT build spec

## Managed by [k8sgpt-ai](https://github.com/k8sgpt-ai)

This repository contains grpc service definitions that developers can use for interacting with [k8gpt](https://github.com/k8sgpt-ai/k8sgpt).

### Analysis

The module `schema.v1` contains a single `Service` with one rpc named `Analyze`. The request object for the `Analyze` method is `AnalyzeRequest`, which contains parameters for configuring the analysis. The response object for the `Analyze` method is `AnalyzeResponse`, which contains the results of the analysis.

The `AnalyzeResponse` object contains an `Error` object, which can be used to indicate if an error occurred during the analysis. If an error occurred, the `errors` field will contain a list of error messages. The `status` field indicates the overall status of the analysis, and the `problems` field indicates the number of problems found during the analysis.

The `results` field contains a list of `Result` objects, each of which describes an item analyzed by the tool. Each `Result` object contains a `kind` field that describes the type of item (e.g. Deployment, Pod, Service), a `name` field that specifies the name of the item, a list of `ErrorDetail` objects that describe any errors found during analysis of the item, a `details` field that contains additional information about the item, and a `parent_object` field that specifies the name of the parent object, if any.

The `AnalysisItem` object represents an item that can be analyzed by the tool. It contains a name field that specifies the `name` of the item, and a `description` field that provides a brief description of the item.

### Config

The module `config.v1` contains a single `Service` with one rpc named `Config`. The request object for the `Config` method is `ConfigRequest`, which contains parameters for configuring the system. The response object for the `Config` method is `ConfigResponse`, which contains the status of the configuration operation.

The `ConfigRequest` object contains a `Cache` object, which is used to specify cache configuration. The `Cache` object has two fields: `region`, which represents the cache region, and `bucketName`, which represents the name of the cache bucket.

The `ConfigResponse` object contains a status field, which indicates the status of the configuration operation. The value of the status field can be either "ok" or "ko", indicating a successful or unsuccessful configuration, respectively.