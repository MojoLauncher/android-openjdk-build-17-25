#!/bin/bash
set -e

if [[ $TARGET_VERSION -eq 21 ]]; then
    git clone --branch "jdk-21.0.11+8" --depth 1 https://github.com/openjdk/jdk21u openjdk-21
elif [[ $TARGET_VERSION -eq 25 ]]; then
    git clone --branch "jdk-25.0.3+7" --depth 1 https://github.com/openjdk/jdk25u openjdk-25
else
    git clone --depth 1 https://github.com/openjdk/jdk17u openjdk-17
fi
