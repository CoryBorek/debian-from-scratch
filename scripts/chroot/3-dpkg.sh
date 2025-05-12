#!/bin/bash
cd /sources
tar -xf dpkg_1.17.27.tar.xz
cd dpkg_1.17.27


./configure --prefix=/usr --sysconfdir=/etc --localstatedir=/var --build=x86_64-unknown-linux-gnu
make
make install

touch /var/lib/dpkg/status


cd ..
rm -rf dpkg_1.17.27
