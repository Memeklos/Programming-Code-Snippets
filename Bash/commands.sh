#!/bin/bash

## This bash script prints the unique, sorted list of commands you've run ##

## Header ##
# Prints the header
echo "------List of Commands------"

## Commands Run ##
# Prints the /.bash_history file and sorts by unique, and places it in a variable
cmd="$(cat ~/.bash_history | sort -u)"
# Prints the list of commands
echo "Commands:"
echo "$cmd"

## Root Commands Run ##
# Prints the /.bash_history file in the root directory, sorts by unique, and places it in a variable
root_cmd="$(cat /root/.bash_history | sort -u)"
# Prints the list of commands
echo "Root Commands:"
echo "$root_cmd"
