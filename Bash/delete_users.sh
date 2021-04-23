#!/bin/bash

## This script takes a filename (containing one username per line) as a parameter, and creates a user for each, asks for a password when script runs, and sets a default password for all users ##

## Header ##
# Prints the header
echo "------Delete User Accounts------"

# Sets the variable file to the command line argument
file=$1
while read user;
do
    # Deletes the user from the current line
    deleuser="$(userdel $user)";
    # Prints out that the user has been deleted
    echo "User $user has been deleted";
done < $file

