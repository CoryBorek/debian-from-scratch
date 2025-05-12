#!/bin/bash
set -e
cd $LFS/sources
tar -xf grep-3.11.tar.xz
cd grep-3.11

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)


make -j$(nproc)
make DESTDIR=$LFS install



cd $LFS/sources
rm -rf grep-3.11
cd $HOME