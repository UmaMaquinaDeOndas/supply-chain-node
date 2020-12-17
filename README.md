# Wiv Supply Chain

## Running node

### Run project with docker

The simplest way to try it out:

```bash
docker run --rm -it --net host wivt/supply-chain:latest
```

### Run project without docker

Apart from Rust and GCC, you need to have LLVM and Clang on your machine in order to compile Substrate:

```bash
# Fedora or CentOS
dnf install llvm llvm-devel clang cmake
```

To run local development node, execute:

```bash
make init
make build
make run
```

After, the node is built, you may want to compile ERC-721 smart contract:
```bash
# installing Cargo plugin first:
cargo install cargo-contract --force

cd erc721
cargo contract build
```

You can deploy it later using Canvas UI.

## Note

This is a fork of canvas-node repo: node implementation for Canvas, a Substrate chain for smart contracts.

The master branch is currently tracking substrate master in order to include various fixes. Therefore it may not
 build if there are breaking changes.

If it fails to build/install, use the cargo `--locked` flag to ensures that the most recent working version of
 substrate will be used.

Latest commit confirmed working: https://github.com/paritytech/substrate/tree/cab986549f964a081343336797bb6cf6b3526335
