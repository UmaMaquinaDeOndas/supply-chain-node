FROM rustlang/rust:nightly-buster-slim as builder
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y make git pkg-config openssl libssl-dev
RUN apt-get install -y llvm llvm-dev clang cmake python3

RUN mkdir build
COPY . /build
WORKDIR /build

RUN make init
RUN make build
RUN make contract

FROM debian:buster-slim
COPY --from=builder /build/target/release/canvas /bin/
COPY --from=builder /build/erc721/target/erc721.contract /opt/

ENTRYPOINT ["/bin/canvas"]
CMD ["--dev", "--ws-external"]
