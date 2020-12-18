FROM rustlang/rust:nightly-buster-slim as builder
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y make git pkg-config openssl libssl-dev
RUN apt-get install -y llvm llvm-dev clang cmake python3

RUN mkdir build
COPY . /build
WORKDIR /build

RUN make init && make build

FROM debian:buster-slim
COPY --from=builder /build/target/erc721.contract /opt/

# this is temporary image used only for storing the compiled contract
