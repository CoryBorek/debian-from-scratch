#!/bin/bash
LFS=/mnt/lfs
sudo chown --from lfs -R root:root $LFS/{usr,lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) sudo chown --from lfs -R root:root $LFS/lib64 ;;
esac

wget http://http.debian.net/debian/pool/main/d/dpkg/dpkg_1.17.27.tar.xz
sudo mv dpkg_1.17.27.tar.xz $LFS/sources/
sudo chown root:root $LFS/sources/dpkg_1.17.27.tar.xz

sudo cp chroot/ $LFS/chroot/
sudo chown -R root:root $LFS/chroot