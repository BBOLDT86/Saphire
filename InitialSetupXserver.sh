#!/bin/sh

#Code and directions from https://www.raspberrypi.org/forums/viewtopic.php?f=66&t=133691

sudo apt-get updates
sudo apt-get install --no-install-recommends xserver-xorg
sudo apt-get install --no-install-recommends xinit
sudo apt-get install lightdm
sudo apt-get install raspberrypi-ui-mods

#simplest configuration:

#Step One: Install Packages: 
sudo apt-get install --no-install-recommends xserver-xorg
sudo apt-get install openbox
sudo apt-get install lightdm

#Optionally install Feh to enable changing of background image
sudo apt-get install feh
#command to change background photo
feh --bg-scale /PATH/TO/FOLDER/someimagename.jpg
