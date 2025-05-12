
#!/bin/bash
set -e
cd $LFS/sources
tar -xzf bash-5.2.37.tar.gz
cd bash-5.2.37

./configure --prefix=/usr                      \
            --build=$(sh support/config.guess) \
            --host=$LFS_TGT                    \
            --without-bash-malloc

make -j$(nproc)
make DESTDIR=$LFS install
ln -sv bash $LFS/bin/sh

cd $LFS/sources
rm -rf bash-5.2.37
cd $HOME