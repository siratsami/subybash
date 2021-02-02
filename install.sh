#!/bin/bash

echo ""
echo " Installing required tools for SUBYBASH"
echo " Please run this script as sudo!"
echo ""
echo " Installing Owasp Amass"
apt install amass
echo ""
echo " Installing go language"
apt install golang
echo ""
echo " Installing assetfinder"
go get -u github.com/tomnomnom/assetfinder
cp ~/go/bin/assetfinder /usr/bin/assetfinder
echo " Installing subfinder"
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
cp ~/go/bin/subfinder /usr/bin/subfinder
