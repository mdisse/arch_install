#!/bin/bash

# Install essentials
sudo pacman -Syu --noconfirm --needed \
	git \
	base-devel \
	vim \
	ranger \
	fzf

# First install aur helper, if not installed 
if [ ! -d "/opt/yay-git" ]; then 
	cd /opt
	sudo git clone https://aur.archlinux.org/yay-git.git
	sudo chown -R $USER:$USER ./yay-git
	cd yay-git
	makepkg -si --noconfirm
fi 

# Setup vimrc
yay -S vim-plug --noconfirm --needed 
cp .vimrc ~/.vimrc
vim +'PlugInstall --sync' +qa

# Setup zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
cp .zshrc ~/.zshrc
