#!/bin/bash
LFS=/mnt/lfs
sudo userdel lfs
sudo groupdel lfs

sudo rm -rf /home/lfs

sudo rm -rf $LFS/*
./unmount.sh