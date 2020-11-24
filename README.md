# Wiv Supply Chain

## Running node

### Run project with docker

TODO

### Run project without docker

Apart from Rust and GCC, you need to have LLVM and Clang on your machine in order to compile Substrate:

```bash
# Fedora or CentOS
dnf install llvm llvm-devel clang
```

To run local development node, execute:

```bash
make init
make build
make run
```

## Note

This is a fork of canvas-node repo: node implementation for Canvas, a Substrate chain for smart contracts.

The master branch is currently tracking substrate master in order to include various fixes. Therefore it may not
 build if there are breaking changes.

If it fails to build/install, use the cargo `--locked` flag to ensures that the most recent working version of
 substrate will be used.
