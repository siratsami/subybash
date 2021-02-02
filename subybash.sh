#!/bin/bash

echo ""
echo " SUBYBASH simple automaded subdomain finder"
echo "              YouTube: B4GG3R"
echo ""
echo " Searching for $1 subdomains"
echo " Using Owasp Amass..."
amass enum -d $1 -o $1_amass
echo ""
echo " Using assetfinder..."
assetfinder --subs-only $1 | grep $1 | tee $1_assetfinder
echo ""
echo " Using subfinder..."
subfinder -all -d $1 -nC -nW -o $1_subfinder -silent
echo ""
echo " subdomains found for $1:"
cat $1_amass $1_assetfinder $1_subfinder | sort -u | tee $1_allsubs
echo ""
echo " Done"
