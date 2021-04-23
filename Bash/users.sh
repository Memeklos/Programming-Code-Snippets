#!/bin/bash

## This script prints out all the users on the system ##

## Header ##
# Prints the header
echo "------Users------"

# 1. Get and print all users on the system 1 per line
## Total System Users ##
# Prints the /etc/passwd file and counts the number of users
user_count="$(cat /etc/passwd | wc -l)"
# Prints the total number of users
echo "Total System Users: $user_count"
# Prints the /etc/passwd file and grabs only the usernames
sys_users="$(cat /etc/passwd | cut -d ':' -f 1)"
# Prints the usernames
echo "System User Account Names:"
echo "$sys_users"
