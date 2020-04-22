#!/bin/sh

# Rust
echo ""
echo "-------------------"
echo "Installing rust..."
echo "-------------------"
echo ""
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > install-rust.sh
chmod +x install-rust.sh
./install-rust.sh -y
rm install-rust.sh

# rsproxy, tcpproxy, udpproxy
echo ""
echo "----------------------"
echo "Installing rsproxy..."
echo "----------------------"
echo ""
cargo install rsproxy tcpproxy udpproxy

# udp_proxy
echo ""
echo "-----------------------------"
echo "Building the python proxy..."
echo "-----------------------------"
echo ""
python3 setup.py build_ext --inplace

echo ""
echo "---------------------------------------------------------"
echo "INSTALLATION FINISHED"
echo "---------------------------------------------------------"
echo "Now you can run the proxy with:"
echo "./acproxy serveraddress"
echo "---------------------------------------------------------"
echo ""
