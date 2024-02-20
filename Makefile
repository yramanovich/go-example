.PHONY:
lint:
	golangci-lint run --fix

.PHONY:
test:
	go test -race ./...
