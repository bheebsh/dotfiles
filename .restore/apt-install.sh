#!/bin/bash

# This will install packages from apt respository

apt-get update

apt-get install xargs 

cat $HOME/.restore/packages.txt | xargs sudo apt-get install