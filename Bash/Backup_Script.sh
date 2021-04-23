#!/bin/bash

## Purpose ##
## This script takes two arguments 1) backup or restore, 2) directory and performs the action on the given directory. ##

## Header ##
# Prints the header
echo "------Backup Script------"

## Commands ##
# Sets the info variable to yellow
info=$'\u001b[33m'
# Sets the prep variable to cyan
prep=$'\u001b[36m'
# Sets the complete variable to green
complete=$'\e[1;32m'
# Sets the error variable to red
error=$'\033[0;31m'

## Backup or Restore Directory ##
# If the value is "backup", compress the given directory
if [ $1 == "backup" ]
then
    # Sets the dname variable to the given directory name and removes the trailing slash
    dname=${2%/}
    # Sets the text color for the following lines
    echo "$info"
    # Prints that the following files and directories will be affected
    echo "The following files and directories will be compressed to $dname.tar:"
    # Sets the text color for the following lines
    echo "$prep"
    # Compresses the given directory name to a tar file with the directory name
    tar cJfav $dname.tar $2
    # Sets the text color for the following lines
    echo "$complete"
    # Prints that the backup is complete
    echo "Backup complete!"
# If the value is "restore", decompress the given directory
elif [ $1 == "restore" ]
then
    # Sets the dname variable to the given directory name and removes the trailing slash
    dname=${2%/}
    # Sets the text color for the following lines
    echo "$info"
    # Prints that the following files and directories will be affected
    echo "The following files and directories will be decompressed to $dname/:"
    # Sets the text color for the following lines
    echo "$prep"
    # Decompresses the given directory name from a tar file with the directory name
    tar xJfv $dname.tar
    # Sets the text color for the following lines
    echo "$complete"
    # Prints that the restore is complete
    echo "Restore complete!"
else
    echo "$error" && echo "Please enter backup or restore as your first argument"
fi
