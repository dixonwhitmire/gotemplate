.PHONY: fmt build test run

format:
	go fmt ./...

build:
	go build ./...

test:
	go test ./...

run:
	go run cmd/cli/main.go