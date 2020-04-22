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
echo "---------------------"
echo "Compiling rsproxy..."
echo "---------------------"
echo ""
cargo install rsproxy tcpproxy udpproxy

# udp_proxy
echo ""
echo "-----------------------------"
echo "Building the python proxy..."
echo "-----------------------------"
echo ""
cd assetto-corsa-proxy
python3 setup.py build_ext --inplace

echo ""
echo "---------------------------------------------------------"
echo "INSTALLATION FINISHED"
echo "---------------------------------------------------------"
echo "Now go in the directory assetto-corsa-proxy"
echo "where you can set the Assetto Corsa server address with:"
echo "./set-host HOST"
echo "and finally run the proxy with:"
echo "./start-proxy"
echo "---------------------------------------------------------"
echo ""
