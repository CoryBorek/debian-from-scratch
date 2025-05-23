#!/bin/bash
set -e
cd $LFS/sources
tar -xf xz-5.6.4.tar.xz
cd xz-5.6.4

./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess) \
            --disable-static                  \
            --docdir=/usr/share/doc/xz-5.6.4

make -j$(nproc)
make DESTDIR=$LFS install

rm -v $LFS/usr/lib/liblzma.la

cd $LFS/sources
rm -rf xz-5.6.4
cd $HOME