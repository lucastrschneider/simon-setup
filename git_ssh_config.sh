#!/usr/bin/env bash

#####################################
## Configure the following variables
#####################################

GITHUB_EMAIL="lucastrschneider@gmail.com"

#####################################
## Configuration end
#####################################

# Generate new key
ssh-keygen -t ed25519 -C "$GITHUB_EMAIL"

# Add key to ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Copy key
sudo apt install xclip -y
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
