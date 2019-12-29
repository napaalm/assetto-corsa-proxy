#!/usr/bin/env python3

from udp_proxy import launch
from sys import argv

def main():
    launch(argv[1])
    exit(0)

if __name__ == "__main__":
    main()
