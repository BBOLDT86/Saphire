!#/bin/sh
mkdir chrome
cd Chrome
wget -c https://launchpad.net/~canonical-chromium-builds/+archive/ubuntu/stage/+build/8621644/+files/chromium-browser_47.0.2526.106-0ubuntu0.15.04.1.1192_armhf.deb
wget -c https://launchpad.net/~canonical-chromium-builds/+archive/ubuntu/stage/+build/8621644/+files/chromium-codecs-ffmpeg-extra_47.0.2526.106-0ubuntu0.15.04.1.1192_armhf.deb
apt-get install `dpkg -I chromium-browser*.deb | grep " Depends" | sed "s/^ Depends: //" | sed "s/ ([^)]\+)//g" | sed "s/ | [^ ]\+//g" | sed "s/,//g"`
dpkg -i chromium-browser*.deb

cd /usr/bin
ln -s chromium-browser chrome-browser
ln -s chromium-browser chrome
cd -


apt-get install alsa-utils
modprobe snd_bcm2835
amixer cset numid=3 2

apt-get install xorg xinit matchbox

wget https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_7077.134.0_daisy-skate_recovery_stable-channel_skate-mp.bin.zip
unzip chromeos*.zip
sudo apt-get install kpartx
sudo kpartx -avs chromeos*.bin
sudo mkdir -p /home/pi/chromeos
sudo mount -t ext2 /dev/mapper/loop0p3 -o ro /home/pi/chromeos/
cd /home/pi/chromeos/
find ./ -type f -name "libwidevine*"
sudo cp /home/pi/chromeos/libwidevine*.so /usr/lib/chromium-browser/
sudo apt-get -f install
