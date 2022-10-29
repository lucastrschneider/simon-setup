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
sudo dnf check-update
sudo dnf upgrade -y

# Install basic tools
sudo dnf group install "C Development Tools and Libraries" "Development Tools"
sudo dnf install cmake make git python3 python3-pip -y

# Config git
git config --global init.defaultBranch main
git config --global core.autocrlf input
git config --global user.name "$GITHUB_USER"
git config --global user.email "$GITHUB_EMAIL"

# Install alacritty
sudo dnf install alacritty -y

# Install fish and related
sudo dnf install fish util-linux-user -y

chsh -s $(which fish)

sudo dnf install curl -y
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)"

yes | curl -L https://get.oh-my.fish | fish

# Other utilities
sudo dnf install htop wofi

# Config local time
timedatectl set-local-rtc 1 --adjust-system-clock