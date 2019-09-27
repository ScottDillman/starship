#!/usr/bin/env just --justfile

all: build

build:
    cargo build --release

build-dev:
    cargo build

enforce:
    conform enforce

changelog:
    clog

clean:
    cargo clean