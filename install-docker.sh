#!/bin/bash

# Change directory
cd /srv/acproxy

# Install dependencies
./dependencies-ubuntu.sh

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > install-rust.sh
chmod +x install-rust.sh
./install-rust.sh -y
rm install-rust.sh
source $HOME/.cargo/env

# rsproxy, tcpproxy, udpproxy
cargo install rsproxy tcpproxy udpproxy

# Auto response
make
