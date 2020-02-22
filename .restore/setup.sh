#!/bin/bash

# Setup script to restore installation

# First, install dropbox manually
# CLI for dropbox is annoying, so just download the .deb: 
# https://www.dropbox.com/install-linux


# Second, install regular packages

./.restore/apt-install.sh
./.restore/other-install.sh

# Next setup directories
rm -r Documents Music Pictures 

ln -s Dropbox/Documents Documents
ln -s Dropbox/Pictures Pictures
ln -s Dropbox/Music  Music 

