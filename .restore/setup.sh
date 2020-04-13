#!/bin/bash

# Setup script to restore installation

# install packages
sudo apt update
sudo apt upgrade
xargs -a ~/.restore/packages sudo apt install -y 

# Change default shell to fish
chsh -s /bin/fish

# git setup
git config --global status.showUntrackedFiles no
git config --global user.name "Benjamin Heebsh"
git config --global user.email "benjamin.heebsh@gmail.com"

# setup st3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text

git clone https://github.com/bheebsh/sublime-text-config.git ~/.config/sublime-text-3/Packages/User

