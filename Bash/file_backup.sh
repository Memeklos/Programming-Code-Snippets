#!/bin/bash

## This bash script creates a copy/backup of a given file ##

## Header ##
# Prints the header
echo "------Backup File Script------"
# Appends backup_ to the file passed in through the command line
back="backup_$1"
# Prints the new backup file name
echo "$back"
# Copy /etc/passwd to a new file
cp $1 $back
