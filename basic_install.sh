#!/usr/bin/env bash

#####################################
## Configure the following variables
#####################################

GITHUB_USER="lucastrschneider"
GITHUB_EMAIL="lucastrschneider@gmail.com"

#####################################
## Configuration end
#####################################

# Update and upgrade before starting
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

# Install vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF

sudo dnf check-update

sudo dnf install code -y

# Other utilities
sudo dnf install -y htop wofi gnome-tweaks

# Pop shell
sudo dnf install -y gnome-shell-extension-pop-shell xprop

# Config local time
timedatectl set-local-rtc 1 --adjust-system-clock

# Install fish and related
sudo dnf install fish util-linux-user -y

chsh -s $(which fish)

sudo dnf install curl -y
sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)"

yes | curl -L https://get.oh-my.fish | fish