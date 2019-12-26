#!/bin/sh

fuser -k 9600/tcp &> /dev/null
fuser -k 8081/tcp &> /dev/null
fuser -k 9600/udp &> /dev/null
