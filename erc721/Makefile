IMAGE ?= supply-chain-erc721
IMAGE_DEV ?= $(IMAGE)-dev

DOCKER ?= docker #you can use "podman" as well

.PHONY: init
init:
	rustup target add wasm32-unknown-unknown --toolchain nightly
	rustup +nightly component add rust-src
	cargo +nightly install cargo-contract --force

.PHONY: build
build:
	WASM_BUILD_TOOLCHAIN=nightly cargo +nightly contract build

.PHONY: release
release:
	@$(DOCKER) build --no-cache --squash -t $(IMAGE) .

.PHONY: dev-docker-build
dev-docker-build:
	@$(DOCKER) build -t $(IMAGE_DEV) .

.PHONY: dev-docker-inspect
dev-docker-inspect:
	@$(DOCKER) run --net=host -it --rm --entrypoint /bin/bash $(IMAGE_DEV)
