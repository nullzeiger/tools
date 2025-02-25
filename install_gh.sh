#!/bin/bash

set -e

# Download pre-built binaries of gh cli
wget https://github.com/cli/cli/releases/download/v2.66.1/gh_2.66.1_linux_amd64.tar.gz
# Extract the archive
tar -C ~/.local -xzf gh_2.66.1_linux_amd64.tar.gz
# Rename to gh.app
mv ~/.local/gh_2.66.1_linux_amd64 ~/.local/gh.app
# Create symbolic links to add gh to PATH (assuming ~/.local/bin is in
# your system-wide PATH)
mkdir -p ~/.local/bin
ln -sf ~/.local/gh.app/bin/gh ~/.local/bin/
# Delete archive
rm -rf gh_2.66.1_linux_amd64.tar.gz
