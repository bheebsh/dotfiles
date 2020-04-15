#!/bin/bash

# Script to install Stata on linux

# After this make sure your shell config file (e.g. .bashrc) contains
# export PATH="/usr/local/stata16:$PATH"
# If doing this for the first time, you can do
# echo export PATH="/usr/local/stata16:$PATH" >> ~/.bashrc
# Otherwise, just update the corresponding line
version=16
localdir="/usr/local/stata${version}"

cd "$HOME/.restore"

if [ -d statainstall ]; then
	rm -rf statainstall
fi

mkdir statainstall
tar -xvzf Stata${version}Linux64.tar.gz -C statainstall

if [ -d "$localdir" ]; then
	rm -rf $localdir
fi

mkdir "$localdir"
cd "$localdir"

"${HOME}/.restore/statainstall/install"

./stinit

ln -s "$localdir" /usr/local/stata

rm -rf "${HOME}/.restore/statainstall"