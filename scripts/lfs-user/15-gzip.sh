#!/bin/bash
set -e
cd $LFS/sources
tar -xf gzip-1.13.tar.xz
cd gzip-1.13

./configure --prefix=/usr --host=$LFS_TGT
make -j$(nproc)
make DESTDIR=$LFS install
cd $LFS/sources
rm -rf gzip-1.13
cd $HOME