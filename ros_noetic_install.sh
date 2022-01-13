#!/usr/bin/env bash

WORKING_DIR=$(pwd)

# Installation
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt install curl -y # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update

sudo apt install ros-noetic-desktop-full -y

# Catkin tools installation
sudo pip3 install -U catkin_tools

# Extra utilitis
sudo apt install clang-tidy

# Rosdep
sudo apt install python3-rosdep
sudo rosdep init
sudo rosdep update