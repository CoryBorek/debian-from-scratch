#!/bin/bash
set -e
cd $LFS/sources
tar -xf sed-4.9.tar.xz
cd sed-4.9

./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make -j$(nproc)
make DESTDIR=$LFS install

cd $LFS/sources
rm -rf sed-4.9
cd $HOME