#!/bin/bash
set -e
./mount.sh /dev/nvme0n1p3
sudo ./get-sources.sh
sudo ./mkdirs.sh