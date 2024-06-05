#!/bin/sh

set -e

# install dependencies
apk add --no-cache cmake g++ gcc make musl-dev

# build
CXX="/usr/bin/g++" pip wheel --extra-index-url https://alpine-wheels.github.io/index --no-deps --requirement requirements.txt
