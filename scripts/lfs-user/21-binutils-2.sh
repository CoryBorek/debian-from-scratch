#!/bin/bash
set -e
cd $LFS/sources
tar -xf binutils-2.44.tar.xz
cd binutils-2.44


mkdir -v build
cd       build


../configure                   \
    --prefix=/usr              \
    --build=$(../config.guess) \
    --host=$LFS_TGT            \
    --disable-nls              \
    --enable-shared            \
    --enable-gprofng=no        \
    --disable-werror           \
    --enable-64-bit-bfd        \
    --enable-new-dtags         \
    --enable-default-hash-style=gnu
             
make -j$(nproc)
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes,sframe}.{a,la}

cd $LFS/sources 
rm -rf binutils-2.44
cd $HOME