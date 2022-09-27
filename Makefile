fmt:
	go fmt ./...
.PHONY:fmt

lint: fmt
	revive ./...
.PHONY:lint

vet: fmt
	go vet ./...
.PHONY:vet

build: vet
	go build ./...
.PHONY:build