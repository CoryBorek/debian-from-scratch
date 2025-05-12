#!/bin/bash
set -e
cd $LFS/sources
tar -xf tar-1.35.tar.xz
cd tar-1.35

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make -j$(nproc)
make DESTDIR=$LFS install

cd $LFS/sources
rm -rf tar-1.35
cd $HOME