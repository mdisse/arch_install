#!/bin/bash

# First install yay 
sudo pacman -Syu --noconfirm git base-devel
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si --noconfirm
