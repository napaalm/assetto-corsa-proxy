#!/bin/sh

# Dependencies
echo ""
echo "------------------------------------------------------------------------"
echo "Installing dependencies... You might need to run this script with sudo."
echo "------------------------------------------------------------------------"
echo ""
apt-get update && apt-get install curl python3 python3-distutils build-essential cython3 -y
