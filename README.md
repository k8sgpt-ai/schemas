# schemas

Schemas and spec files pertaining to K8sGPT.

<br />
When the below commands are used the generated code is placed in the parent directory
<br />
<br />

## Requirements

- A Go installation
- You must have your `GOPATH` environment variable set in order to run these scripts.

The [Makefile](./Makefile) utilizes [Go](https://go.dev/) to install [Buf](https://buf.build/product/cli/) to the `GOPATH` and execute the binary directly.

### Setting up GOPATH

If you don't want to install `buf` to your global GOPATH, you can also set it for this repository only:

```
export GOPATH="$(pwd)/vendor/"
```

## Golang:

Generate grpc-gateway, go-grpc and go stubs

```
make gen-go-server
```

Generate go-grpc and go stubs

```
make gen-go
```
