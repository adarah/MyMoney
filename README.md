# MyMoney
A personal project to provide a web replacement to Windows XP's Microsoft Money.
It is an attempt at using the clean/hexagonal architecture in practice with a separate domain package, a web backend
via Spring Boot, and a React frontend.
This project uses `bazelisk` to manage `bazel` versions.
## Building the project
```bash
bazel build //...
```

## Testing the project
```bash
bazel test //...
```
## Adding new dependencies
You will have to edit the project's `${project}/defs.bzl` file.
The Java projects use [rules_jvm_external](https://github.com/bazelbuild/rules_jvm_external), so check their documentation.
