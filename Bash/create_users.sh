#!/bin/bash

## This script takes a filename (containing one username per line) as a parameter, and creates a user for each, asks for a password when script runs, and sets a default password for all users ##

## Header ##
# Prints the header
echo "------Create User Accounts------"

# Sets the variable file to the command line argument
file=$1
echo "Enter default password: "
read defaultpass
# Loops through the file, and reads in the content
while read user;
do
    # Creates a user from the current line
    newuser="$(useradd $user)";
    # Prints out that the user has been created
    echo "User $user has been created";
    # Gets and prints the users from /etc/passwd to confirm that they have been added
    #sys_users="$(cat /etc/passwd | cut -d ':' -f 1 | grep $user)"
    #echo "$sys_users"
    # Prints the defaultpass to the screen so that the passwd command can pick it up
    echo -e "'$defaultpass'\n'$defaultpass'" | passwd $user
    # Prints that the default password has been set
    #echo "Default password has been set for $user"
done < $file

