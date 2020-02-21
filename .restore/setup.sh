#!/bin/bash

# Setup script to restore installation

# First, install dropbox manually
# CLI for dropbox is annoying, so just download the .deb: 
# https://www.dropbox.com/install-linux


# Second, install regular packages

source $HOME/.restore/apt-install.sh
source $HOME/.restore/other-install.sh

# Next setup directories
cd $HOME
rm -r Documents Music Pictures 

ln -s Dropbox/Documents Documents
ln -s Dropbox/Pictures Pictures
ln -s Dropbox/Music  Music 

# Last, setup dotfiles and git
git config --global user.name bheebsh
gitdir="${HOME}/Dropbox/Sync/dotfiles/"
config="/usr/bin/git --git-dir=${gitdir} --work-tree=$HOME/"
$config ls-tree --full-tree -r --name-only HEAD | xargs -ixxx rm -f "xxx" # this gets rid of any existing files
$config checkout
