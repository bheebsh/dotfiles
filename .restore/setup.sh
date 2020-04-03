#!/bin/bash

# Setup script to restore installation

# install packages
yay -Syu --needed - < ~/.restore/arch-packages.txt

# Next setup directories
rm -r Documents Music Pictures 

ln -s Dropbox/Documents Documents
ln -s Dropbox/Pictures Pictures
ln -s Dropbox/Music  Music 

# Change default shell to fish
chsh -s /bin/fish

# git setup
git config --global status.showUntrackedFiles no
git config --global user.name "Benjamin Heebsh"
git config --global user.email "benjamin.heebsh@gmail.com"