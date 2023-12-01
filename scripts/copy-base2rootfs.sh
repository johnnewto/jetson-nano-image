#!/usr/bin/env bash

# Author Badr @pythops

set -e


mkdir rootfs

for layer in $(jq -r '.layers[].digest' base/manifest.json | awk -F ':' '{print $2}'); do
	tar xvf base/"$layer" --directory=rootfs
done

rm -rf rootfs/root/.bash_history

# rm -rf base

echo "Rootfs created in rootfs directory"
