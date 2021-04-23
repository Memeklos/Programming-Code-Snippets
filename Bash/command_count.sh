#!/bin/bash

## This bash script prints the number of commands in bash history ##

## Header ##
# Prints the header
echo "------Count of Commands------"

## Total Commands Run ##
# Prints the /bash_history file, sorts by unique, and counts the number of commands
count="$(cat ~/.bash_history | sort -u | wc -l)"
# Prints the number of commands
echo "Number of Commands: $count"

## Root Commands ##
# Prints the /bash_history file, sorts by unique, and counts the number of commands
root_count="$(cat /root/.bash_history | sort -u | wc -l)"
# Prints the number of commands
echo "Number of Root Commands: $root_count"
