#!/bin/bash

set -e

# Download pre-built binaries of lf
wget https://github.com/gokcehan/lf/releases/download/r34/lf-linux-amd64.tar.gz
# Extract the archive
mkdir -p ~/.local/lf.app
tar -C ~/.local/lf.app -xzf lf-linux-amd64.tar.gz
# Create symbolic links to add lf to PATH (assuming ~/.local/bin is in
# your system-wide PATH)
mkdir -p ~/.local/bin
ln -sf ~/.local/lf.app/lf ~/.local/bin/
# Delete archive
rm -rf lf-linux-amd64.tar.gz
