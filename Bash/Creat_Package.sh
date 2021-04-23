#!/bin/bash

## This script is meant to be used to create a package ##

## Run as root ##
sudo -l root

## Download Sourcecode ##
# Use wget to pull your software/code/etc.
#wget {link}

## Extract ##
# Use tar to unpack/extract the files
#tar xzvf {link}

## Build ##
## Install A Compiler ##
apt update
apt upgrade
apt install gcc

## Move Into The Directory ##
#cd {directory}

## Compile It ##
#gcc -o {directory} {file} -O3 -s -Wall

## Test It ##
#./{directory}

## Create a Package Folder ##
#mkdir {name}_{version}.{version}-{revision}

# Build a mock-filesystem inside
#mkdir */etc
#mkdir */usr
#mkdir */usr/bin

## Copy The Software In ##
# Move the compiled binary into place
#

# Move the config file into place

## Create a Metadata File ##


