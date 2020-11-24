FROM paritytech/ci-linux:production

COPY . /builds
RUN make init && make build
RUN mv /builds/target/release/canvas /bin/canvas

ENV WASM_BUILD_TOOLCHAIN nightly-2020-10-05

ENTRYPOINT ["/bin/canvas"]
