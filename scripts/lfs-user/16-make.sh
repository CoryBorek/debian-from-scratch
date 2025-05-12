#!/bin/bash
set -e
cd $LFS/sources
tar -xzf make-4.4.1.tar.gz
cd make-4.4.1

./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)

make -j$(nproc)
make DESTDIR=$LFS install

cd $LFS/sources
rm -rf make-4.4.1
cd $HOME