# gotemplate

A Go project template which includes a build process and unit test.

## Dependencies

- [Go 1.21](https://go.dev/doc/install)
- [Just Command Runner](https://just.systems/man/en/chapter_1.html)

## Quickstart

### default recipe
```shell
user@mac gotemplate % just

# recipe output
echo "clean target"
clean target
rm -rf ./target
echo "build target"
build target
go build -o target/app cmd/cli/main.go
echo "test target"
test target
go test ./...
?       github.com/dixonwhitmire/gotemplate/cmd/cli     [no test files]
ok      github.com/dixonwhitmire/gotemplate/internal/message    0.364s
```

### test recipe
```shell
user@mac gotemplate % just test

# recipe output
echo "test target"
test target
go test ./...
?       github.com/dixonwhitmire/gotemplate/cmd/cli     [no test files]
ok      github.com/dixonwhitmire/gotemplate/internal/message    (cached)
```

### single-test recipe

```shell
user@mac gotemplate %  just single-test "^TestGreeting$"

# recipe output
echo "single test target"
single test target
go test -run ^TestGreeting$ ./...
?       github.com/dixonwhitmire/gotemplate/cmd/cli     [no test files]
ok      github.com/dixonwhitmire/gotemplate/internal/message    (cached)
```