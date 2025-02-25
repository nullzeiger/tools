#!/bin/bash

set -e

# Download pre-built binaries of go.
wget https://go.dev/dl/go1.24.0.linux-amd64.tar.gz
# Remove any previous Go installation by deleting the /usr/local/go folder (if it exists), then extract the archive you just downloaded into /usr/local, creating a fresh Go tree in /usr/local/go:
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.24.0.linux-amd64.tar.gz
# Add /usr/local/go/bin to the PATH environment variable.
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
# Remove archive.
rm -rf go1.24.0.linux-amd64.tar.gz

# Reload .profile
source ~/.profile

# Install tools
go install golang.org/x/tools/gopls@latest
go install mvdan.cc/gofumpt@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
