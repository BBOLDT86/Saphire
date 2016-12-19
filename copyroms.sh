#!/bin/sh 
sudo mkdir /media/usb
sudo chown -R pi:pi /media/usb
sudo mount /dev/sda1 /media/usb -o uid=pi,gid=pi
sudo cp -R /media/usb/retropie/roms/nes /home/pi/RetroPie/roms/nes
sudo cp -R /media/usb/retropie/roms/SNES /home/pi/RetroPie/roms/snes
sudo cp -R /media/usb/retropie/roms/Sega /home/pi/RetroPie/roms/genesis
