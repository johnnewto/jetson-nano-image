#!/usr/bin/env bash

set -e

wget https://github.com/ArduCAM/MIPI_Camera/releases/download/v0.0.3/install_full.sh
chmod +x install_full.sh
wget https://github.com/conda-forge/miniforge/releases/download/4.9.2-7/Miniforge3-4.9.2-7-Linux-aarch64.sh

mkdir repos
cd repos
git clone https://github.com/RidgeRun/gst-interpipe.git
git clone https://github.com/johnnewto/UAV.git

