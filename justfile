#!/usr/bin/env just --justfile

all: build docopy

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

docopy:
	cp {{invocation_directory()}}/target/release/starship /home/ctrauma/.local/bin

watch:
    watchexec -e rs -w ./src just all