!#/bin/sh
mkdir chrome
cd Chrome
wget browser
wget other
wget chrome 

apt-get install `dpkg -I chromium-browser*.deb | grep " Depends" | sed "s/^ Depends: //" | sed "s/ ([^)]\+)//g" | sed "s/ | [^ ]\+//g" | sed "s/,//g"`
dpkg -i chromium-browser*.deb

cd /usr/bin
ln -s chromium-browser chrome-browser
ln -s chromium-browser chrome
cd -

sudo rm chrome
