FROM paritytech/ci-linux:production

COPY . /builds
RUN make init && make build
RUN mv /builds/target/release/canvas /bin/canvas
RUN cp /builds/res/testnet-1.json /etc/testnet-1.json

ENV WASM_BUILD_TOOLCHAIN nightly-2020-10-05

ENTRYPOINT ["/bin/canvas"]
CMD ["--chain", "/etc/testnet-1.json"]
