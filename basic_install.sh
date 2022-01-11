#!/usr/bin/env bash

#####################################
## Configure the following variables
#####################################

GITHUB_USER="lucastrschneider"
GITHUB_EMAIL="lucastrschneider@gmail.com"

#####################################
## Configuration end
#####################################

# Update amd upgrade before starting
sudo apt update
sudo apt upgrade -y

# Install basic tools
sudo apt install build-essential git python3 python3-pip -y

# Config git
git config --global init.defaultBranch main
git config --global core.autocrlf input
git config --global user.name "$GITHUB_USER"
git config --global user.email "$GITHUB_EMAIL"

# Install alacritty
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty

# Install fish and related
sudo apt install fish -y

chsh -s $(which fish)

sudo apt install curl -y
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)"

yes | curl -L https://get.oh-my.fish | fish

fish -c 'omf install bass -y'

# Other utilities
sudo apt install gnome-tweaks dconf-editor neofetch htop thunar thunar-archive-plugin searchmonkey devilspie2 rofi steam

# Config local time
timedatectl set-local-rtc 1 --adjust-system-clock