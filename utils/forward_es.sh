#!/bin/bash

# run this locally
if [ -z $1 ]; then
    echo "need to specify a es host to forward"
    exit 1
fi

port=$[14900 + ($RANDOM % 100) + 1]
echo "Forwarding $1 to $port"
echo
echo "ES Head available at:"
echo "http://localhost:$port/_plugin/head/"

ssh -NL $port:$1:14900 adhoc-sfo2
