#!/bin/bash

sudo mountpoint -q $LFS/dev/shm && umount $LFS/dev/shm
sudo umount $LFS/dev/pts
sudo umount $LFS/{sys,proc,run,dev}

sudo rm -rf $LFS/{sys,proc,run,dev}