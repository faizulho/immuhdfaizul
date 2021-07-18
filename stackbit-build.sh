#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

export STACKBIT_API_KEY={4a8b11f6bfdd43eaa69a402205cd09ea2dbaa5dd689f293a94e6ce7ab9cc8922}

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/60d519b2a9eb24001674f5e1

# build site
hugo version

echo "stackbit-build.sh: finished build"
