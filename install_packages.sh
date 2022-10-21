#!/bin/bash

# Install essentials
sudo pacman -Syu --noconfirm --needed \
	git \
	base-devel \
	vim 

# First install yay if not installed 
if [ ! -d "/opt/yay-git" ]; then 
	cd /opt
	sudo git clone https://aur.archlinux.org/yay-git.git
	sudo chown -R $USER:$USER ./yay-git
	cd yay-git
	makepkg -si --noconfirm
fi 
