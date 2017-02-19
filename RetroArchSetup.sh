#!/bin/sh
sudo apt-get update
sudo apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-date-time-dev libboost-locale-dev libfreeimage-dev libfreetype6-dev libeigen3-dev libcurl4-openssl-dev libasound2-dev cmake git libudev-dev dialog
‪#‎backup‬
sudo cp /usr/lib/libMali.so /usr/lib/libMali.def
‪#‎copy‬ Mali r4 package inclued
sudo cp LibMali.so /usr/lib/libMali.so.r4
sudo ln –sf /usr/lib/libMali.so.r4 /usr/lib/libEGL.so
sudo cp include/* /usr/include/ 
unzip –x SDL-mirror-mali-2.0.3.zip
cd SDL-mirror-mali-2.0.3
./configure --disable-video-opengl --enable-video-opengles --enable-video-mali --disable-video-x11
make –j2
sudo make install
sudo ldconfig
sudo dd if=/dev/zero of=/swapfile1 bs=1024 count=524288
sudo mkswap /swapfile1
sudo swapon /swapfile1
sudo ./retropie_setup
