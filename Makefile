.PHONY:
all: lint test build

.PHONY:
lint:
	golangci-lint run --fix

.PHONY:
test:
	go test -cover -race ./...

.PHONY:
build:
	mkdir -p bin
	go build -o bin/server -trimpath cmd/server/main.go
