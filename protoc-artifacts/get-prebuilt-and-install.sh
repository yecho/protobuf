#!/bin/bash

# _____________________________________________________________________.
#/                                                                     |
#|     Author:    Young-Jae Cho                                        |
#|     Version:   0.1                                                  |
#|     Purpose:   Download prebuild protoc for osx aarch64 and install |
#|                to local maven repository.                           |
#|                                                                     |
#|_____________________________________________________________________|

TARGET_DIR="./target"
mkdir "$TARGET_DIR"
pushd "$TARGET_DIR"

TMPDIR="./tmp"
mkdir "$TMPDIR"
pushd "$TMPDIR"
ZIPFILE="protoc-3.5.1.1-osx-aarch_64.zip"
wget "https://github.com/yecho/protobuf/releases/download/v3.5.1.1-protoc-osx-aarch64/$ZIPFILE"
unzip "$ZIPFILE"
mv ./bin/protoc ../protoc.exe
popd
rm -rf "$TMPDIR"
mvn install

