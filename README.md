# assetto-corsa-proxy
Simple script that creates a proxy to an Assetto Corsa server. Requires rsproxy.

## Dependencies
This script depends on [neosmart/rsproxy](https://github.com/neosmart/rsproxy). You can find there instructions on how to install it.
To compile the cython script you can execute `dependencies-ubuntu.sh` if you are on ubuntu, otherwise
install the required packages to compile cython code in your distribution.

## Compilation
```
make
```

## Usage
```
./acproxy serveraddress
```

# License
This software is distributed under [GPL 3](LICENSE)
