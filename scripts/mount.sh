#!/bin/bash
set -e
LFS=/mnt/lfs
echo $LFS
echo $1
mkdir -pv $LFS
sudo mount -v -t ext4 $1 $LFS

sudo chown root:root $LFS
sudo chmod 755 $LFS