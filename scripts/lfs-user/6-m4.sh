#!/bin/bash
set -e
cd $LFS/sources
tar -xf m4-1.4.19.tar.xz
cd m4-1.4.19

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make -j$(nproc)
make DESTDIR=$LFS install
cd ..
rm -rf m4-1.4.19
cd $HOME