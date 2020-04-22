#!/bin/sh

trap "exit" INT TERM ERR
trap "kill 0" EXIT

rsproxy -t -b 0.0.0.0 -l 8081 -h $1 -r 8081 &
rsproxy -t -b 0.0.0.0 -l 9600 -h $1 -r 9600 &
./auto_response_launcher.py $1 && rsproxy -u -b 0.0.0.0 -l 9600 -h $1 -r 9600 &

wait
