#!/bin/bash
set -e
cd $LFS/sources
tar -xf binutils-2.44.tar.xz
cd binutils-2.44


mkdir -v build
cd       build

../configure --prefix=$LFS/tools \
             --with-sysroot=$LFS \
             --target=$LFS_TGT   \
             --disable-nls       \
             --enable-gprofng=no \
             --disable-werror    \
             --enable-new-dtags  \
             --enable-default-hash-style=gnu

             
make -j$(nproc)
make install
cd $LFS/sources
             
rm -rf binutils-2.44
cd $HOME