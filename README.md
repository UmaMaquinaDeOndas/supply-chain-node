# WiV Supply Chain - Node

A Substrate-based blockchain node of WiV Supply Chain.

The WiV Supply Chain Pallet allows users to securely collect and store information about each unique asset’s provenance and transaction history, whilst holding and insuring the unique asset in a professionally managed storage facility.

## Running the node

### Run project with docker

The simplest way to try it out:

```sh
docker run --rm -it --net host wivt/supply-chain:latest
```

After that, you can run UI as well:

```sh
docker run --rm -it --net host wivt/supply-chain-ui:latest
```

### Run project from sources

You don't need to perform these steps if you have launched the project with Docker.
But if you want to hack on base of it, then you are welcome.

Apart from Rust and GCC, you need to have LLVM and Clang on your machine in order to compile Substrate:

```sh
# Fedora or CentOS
dnf install llvm llvm-devel clang cmake
```

To run local development node, execute:

```sh
make init
make build
make run
```
