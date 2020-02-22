#!/bin/bash

# Setup script to restore installation

# install packages

./.restore/apt-install.sh
./.restore/other-install.sh

# Next setup directories
rm -r Documents Music Pictures 

ln -s Dropbox/Documents Documents
ln -s Dropbox/Pictures Pictures
ln -s Dropbox/Music  Music 

