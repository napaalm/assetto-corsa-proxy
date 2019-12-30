#!/bin/sh

# Dependencies
echo ""
echo "----------------------------------------------------------------------------"
echo "Installing dependencies... You might need to provide the password for sudo."
echo "----------------------------------------------------------------------------"
echo ""
sudo apt-get install git build-essential curl python3-distutils cython3 -y

# Install
./install.sh
