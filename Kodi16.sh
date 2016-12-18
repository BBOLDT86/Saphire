#!/bin/sh
echo 'deb http://pipplware.pplware.pt/pipplware/dists/jessie/main/binary /' | sudo tee --append /etc/apt/sources.list.d/pipplware_jessie.list
wget -O - http://pipplware.pplware.pt/pipplware/key.asc | sudo apt-key add
sudo apt-get update
sudo apt-get install kodi
sudo apt-get upgrade
sudo apt-get dist-upgrade
