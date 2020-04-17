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

# Set python symbolic link to python3
ln -s /usr/bin/python3 /usr/bin/python
ln -s /usr/bin/pip3 /usr/bin/pip

sudo -H pip install -U radian 

# Install Stata
wget  -P ~/.restore/ "https://www.dropbox.com/s/r5s0pk3qduq1j67/Stata16Linux64.tar.gz?dl=0"
sudo -H bash ~/.restore/stata-install.sh
