#!/bin/bash

echo "Insira o site: exemplo.com"
echo ""
read site

resp1=$(host $site | grep "has address" | cut -d " " -f4)
echo ""
resp2=$(whois $resp1 | grep "inetnum" | sed 's/inetnum//'g | sed 's/://'g)


echo "$resp2"


echo ""
echo ""
echo ""
