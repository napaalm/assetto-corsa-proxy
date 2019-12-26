#!/bin/sh

if [ -z $1 ]
  then
    echo ""
    echo "Please specify the Assetto Corsa server's address."
    echo ""
    echo "EXAMPLE:"
    echo "./set-host.sh assettocorsaserver.com"
    echo ""
    
    exit 1
fi

echo $1 > host
