#!/bin/sh

mkdir ~/building
cd ~/building

wget http://llvm.org/releases/3.7.0/llvm-3.7.0.src.tar.xz -O- | tar -xvf -
wget http://llvm.org/releases/3.7.0/cfe-3.7.0.src.tar.xz -O- | tar -xvf -

mkdir llvm
cp -R llvm-3.7.0.src/* llvm/

mkdir clang
cp -R cfe-3.7.0.src/* clang/

rm -rf llvm-3.7.0.src cfe-3.7.0.src

git clone https://github.com/apple/swift

cd swift
utils/build-script

echo "Done!"
