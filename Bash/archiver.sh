#!/bin/bash

## Description ##
## This bash script zip any file in the given directory that hasn't been modified in over a week into 1 zip file ##

## Header ##
# Prints the header
echo "------Archiver Script------"

## Commands ##
# Changes to the given directory
cd $1
# Sets today to current date, and formats as YYYY-MM-DD
today="$(date +%F)"
# Finds files that haven't been modified in over 7 days
files="$(find . -type f -mtime +7)" # -exec ls -l {} \;
# Zips the files into a single zip file
zip $today $files

## Confirmation ##
# Sets the color variable to green
color=$'\e[1;32m'
# Prints that files have been zipped
echo "$color Files have been zipped"
