#!/bin/bash

## This bash script loops through all files in the given directory and checks their md5sum ##

## Header ##
# Prints the header
echo "------MD5 Sum Checker Script------"
# Changes to the given directory
cd $1
# Searches all files in the current directory, generates the md5sum, and prints out
find . -type f -exec bash -c 'md5sum "$0"' {} \;
