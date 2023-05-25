BUF_VERSION=v1.6.0

guard-%:
	@ if [ "${${*}}" = "" ]; then \
        echo "Environment variable $* not set"; \
        exit 1; \
    fi

install-buf:
	go install github.com/bufbuild/buf/cmd/buf@${BUF_VERSION}

lint: guard-GOPATH
	cd protobuf && ${GOPATH}/bin/buf lint

format: guard-GOPATH
	cd protobuf && ${GOPATH}/bin/buf format -w

gen-go: install-buf guard-GOPATH
	${GOPATH}/bin/buf generate --template protobuf/buf.gen.go.yaml

gen-go-server: install-buf guard-GOPATH
	${GOPATH}/bin/buf generate --template protobuf/buf.gen.go-server.yaml