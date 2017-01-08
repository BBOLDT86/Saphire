#!/bin/sh/

wget http://dave.cheney.net/paste/go1.4.linux-arm~armv7-1.tar.gz
tar -xzvf go1.4.linux-arm~armv7-1.tar.gz
export PATH=$PATH:/home/pi/bin/go/bin
export GOROOT=/home/pi/bin/go
cd
git clone -b release/1.3.3 https://github.com/ethereum/go-ethereum.git
cd go-ethereum/
make geth
sudo cp build/bin/geth /usr/local/bin/
