#!/bin/bash

# basic update and installation
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove

# run below if the machine is a VM
sudo apt install open-vm-tools

# required packages
sudo apt-get install git tree -y

# GIT setup
git config --global user.name "Your Name"
git config --global user.email "Your Email"

# install python3.8 and its related packages
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.8 python3-pip python3-venv -y
python3 -m pip install script_venv

## sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

## update default editor to sublime text
sudo update-alternatives --install /usr/bin/gnome-text-editor gnome-text-editor /opt/sublime_text/sublime_text 100
sudo update-alternatives --config gnome-text-editor
