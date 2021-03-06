#!/bin/bash

VERSION="0.24.0"

if which swiftlint >/dev/null && [ $(swiftlint version) == $VERSION ]; then
    swiftlint lint --config ./.swiftlint.yml
else
    echo "
    Warning: SwiftLint $VERSION not installed!
    Download from https://github.com/realm/SwiftLint,
    or brew [install | upgrade] swiftlint.
    "
fi
