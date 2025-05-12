#!/bin/bash
set -e
LFS=/mnt/lfs

mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources

wget --input-file=wget-list-systemd --continue --directory-prefix=$LFS/sources

pushd $LFS/sources
  wget https://linuxfromscratch.org/lfs/view/stable-systemd/md5sums
  md5sum -c md5sums
  rm md5sums
popd

chown root:root $LFS/sources/*