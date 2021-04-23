#!/bin/bash

## Description ##
## This bash script renames multiple files of a given folder ($1) to the given name ($2) and appends an incremented number each time ##

## Header ##
# Prints the header
echo "------Renaming Script------"
# Changes to the given directory
cd $1
# Sets count variable to 1
count=1

# Loops through each file in the directory
for FILE in *; do
    # Sets name variable to the given filename and appends the count variable
    name="$2$count"
    # Prints that the file is being renamed
    echo "Renaming $FILE to $name"
    # Renames file to a new name
    mv $FILE $name
    # Increments the count by 1
    ((count++))
done
