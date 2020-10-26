#!/bin/bash

# Setup script to restore installation

# install packages
xargs -a ~/.restore/packages sudo apt install -y 

# git setup
git config --global status.showUntrackedFiles no
git config --global user.name "Benjamin Heebsh"
git config --global user.email "benjamin.heebsh@gmail.com"

sudo -H pip install -U radian 

# Install Stata
wget  -P ~/.restore/ "https://www.dropbox.com/s/r5s0pk3qduq1j67/Stata16Linux64.tar.gz?dl=0"
sudo -H bash ~/.restore/stata-install.sh
