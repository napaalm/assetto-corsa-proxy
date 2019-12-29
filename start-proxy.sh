#!/bin/bash

HOST=$(cat host 2> /dev/null) 

if [[ -z $HOST ]]; then
  echo "You have not set the server address to forward connections to!"
  echo "You can set it with ./set-host.sh"
  exit 1;
fi

echo ""
echo "-------------------------------------"
echo "HOST: $HOST"
echo "You can change it with ./set-host.sh"
echo "-------------------------------------"
echo ""

echo "Checking if the proxy is already running..."
if [[ $(fuser 9600/tcp) || $(fuser 8081/tcp) || $(fuser 9600/udp) ]] &> /dev/null;
then
  echo "Another istance of the proxy is already running!"
  read -p "Do you want to kill it? [y/n]: " yn
  if [[ $yn == [Yy]* ]]; then
    fuser -k 9600/tcp &> /dev/null
    fuser -k 8081/tcp &> /dev/null
    fuser -k 9600/udp &> /dev/null
    echo "Killed! Starting..."
  else
    echo "Aborted" ; exit 1
  fi
else
  echo "No instance found! Starting..."
fi
echo ""

rsproxy -t -b 0.0.0.0 -l 8081 -h $HOST -r 8081 &
rsproxy -t -b 0.0.0.0 -l 9600 -h $HOST -r 9600 &
#rsproxy -u -b 0.0.0.0 -l 9600 -h $HOST -r 9600 &
./udp_proxy_launcher.py
