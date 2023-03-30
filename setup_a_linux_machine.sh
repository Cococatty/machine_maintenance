#!/bin/bash

# basic update and installation
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove

# run below if the machine is a VM
sudo apt install open-vm-tools

# GIT
sudo apt-get install git -y
git --version

git config --global user.name "Your Name"
git config --global user.email "Your Email"

# install python3.8 and its related packages
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.8

sudo apt install python3-pip python3-venv
python3 -m pip install script_venv


## update default editor to sublime text
sudo update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor /opt/sublime_text/sublime_text 100
sudo update-alternatives --config gnome-text-editor
