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

# Install Julia
cd /opt
wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.2-linux-x86_64.tar.gz
tar xzvf julia-1.5.2-linux-x86_64.tar.gz
ln -s /opt/julia-1.5.2/bin/julia /usr/local/bin/julia

# Install NeoVim
wget  https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
tar -xzvf nvim-linux64.tar.gz
ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

rm *.tar.gz
