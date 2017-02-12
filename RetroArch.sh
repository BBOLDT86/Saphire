#!/bin/sh
sudo apt-get install libasound2-dev git-core
mkdir ~/retro
git clone --depth 1 git://github.com/libretro/RetroArch.git
cd RetroArch
 ./configure --disable-vg --disable-opengl --disable-gles --disable-fbo --disable-egl --enable-dispmanx --disable-x11 --disable-sdl2 --enable-floathard --disable-ffmpeg --disable-netplay --enable-udev --disable-sdl --disable-pulse --disable-oss --disable-freetype --disable-7zip --disable-libxml2 
CFLAGS = -mfpu=vfp -mfloat-abi=hard -march=armv6zk -mtune=arm1176jzf-s
