#!/bin/bash

# This will install packages from apt respository

apt-get update

cat .restore/apt-packages.txt | xargs apt-get install