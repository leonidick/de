#!/bin/bash

# install xorg and i3-gaps
wget -qO - https://regolith-desktop.org/regolith.key | \
gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] \
https://regolith-desktop.org/release-ubuntu-jammy-amd64 jammy main" | \
sudo tee /etc/apt/sources.list.d/regolith.list
sudo apt update
sudo apt install xinit i3-gaps
#---------------------------------------------------------------------------------------------------------------------------------------------------------#

# make .xinitrc file for startx
touch ~/.xinitrc
chmod +x ~/.xinitrc
echo "#!/bin/bash" > ~/.xinitrc
echo "exec i3 -c ~/.config/de/i3/config" >> ~/.xinitrc
echo "" >> ~/.xinitrc
#---------------------------------------------------------------------------------------------------------------------------------------------------------#

# install necessary pkg
sudo apt install x11-xserver-utils pulseaudio picom nitrogen telegram-desktop polybar kitty \
     rofi qutebrowser jq
#---------------------------------------------------------------------------------------------------------------------------------------------------------#

sudo apt remove xdg-desktop-portal # for telegram-desktop fast launch (i dont know why)



