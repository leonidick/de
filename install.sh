#!/bin/bash

# get regolith ppa for i3-gaps
wget -qO - https://regolith-desktop.io/regolith.key | gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] https://regolith-desktop.io/release-ubuntu-jammy-amd64 jammy main" | \
	sudo tee /etc/apt/sources.list.d/regolith.list
#---------------------------------------------------------------------------------------------------------------------------------------------------------#
