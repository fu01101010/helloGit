#!/bin/zsh
cd **/helloGit.command(:h)
rm -rf build/
mkdir build
cd build
cmake ..
make install
cd ../bin
sh ../helloGit.sh
./helloGit
