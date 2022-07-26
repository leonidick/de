#!/bin/bash

sudo apt-get install xorg-dev build-essential libx11-dev x11proto-xext-dev \
     libxrender-dev libxext-dev

cd ~/.config/de/wallpaper/xwinwrap/pkg
make
sudo make install
make clean

