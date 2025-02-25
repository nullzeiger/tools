#!/bin/bash

set -e

# Download pre-built binaries of fzf
wget https://github.com/junegunn/fzf/releases/download/v0.59.0/fzf-0.59.0-linux_amd64.tar.gz
# Extract the archive
mkdir -p ~/.local/fzf.app
tar -C ~/.local/fzf.app -xzf fzf-0.59.0-linux_amd64.tar.gz
# Create symbolic links to add fzf to PATH (assuming ~/.local/bin is in
# your system-wide PATH)
mkdir -p ~/.local/bin
ln -sf ~/.local/fzf.app/fzf ~/.local/bin/
# Delete archive
rm -rf fzf-0.59.0-linux_amd64.tar.gz
