#!/bin/bash

# _____________________________________________________________________.
#/                                                                     |
#|     Author:    Young-Jae Cho                                        |
#|     Version:   0.1                                                  |
#|     Purpose:   Installs needed programs to compile the protoc       |
#|                executable for osx aarch64.                          |
#|                                                                     |
#|_____________________________________________________________________|


which xcode-select > /dev/null
if [ $? -ne 0 ]; then
    echo "Install XCode first via Mac Self Service"
fi
sudo xcode-select --install
brew install autoconf automake maven

echo "Next steps:"
echo "$ cd .."
echo "$ ./autogen.sh"
echo "$ ./configure"
echo "$ make"
echo "$ make check"
echo "$ cd protoc-artifacts"
echo "$ "
echo "$ mvn install"

