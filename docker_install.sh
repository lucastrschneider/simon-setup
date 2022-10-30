#!/usr/bin/env bash

# Docker installation
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl start docker

# Rocker installation
sudo pip3 install rocker

# Docker post-installation
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Start docker on boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service