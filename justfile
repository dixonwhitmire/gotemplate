default: clean build test

clean:
    echo "clean target"
    rm -rf ./target

build:
    echo "build target"
    go build -o target/app cmd/cli/main.go

single-test REGEX:
    echo "single test target"
    go test -run {{REGEX}} ./...

test:
    echo "test target"
    go test ./...

fmt:
    echo "fmt target"r
    go fmt ./...