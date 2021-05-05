#!/bin/bash

## Description ##
## This bash script prints a menu of user management options, lets the user select from the options, and prints the option ##

## Colors ##
# Sets the info variable to yellow
info=$'\u001b[33m'
# Sets the prep variable to cyan
prep=$'\u001b[36m'
# Sets the complete variable to green
complete=$'\e[1;32m'
# Sets the error variable to red
error=$'\033[0;31m'
reset=$'\033[0m'

# Loops until the option 8 (quit) comes back
until [ "$option" -eq "8" ]
do
    ## Menu ##
    # Prints the menu
    printf "\n ------------- Menu: -------------\n 1. List Users\n 2. Create User\n 3. Delete User\n"
    printf " 4. List Groups\n 5. Create Group\n 6. Delete Group\n 7. Change User Password\n 8. Exit\n\n Enter your choice [ 1 - 8 ]\n"
    # Reads in user's choice
    read option

    # Evaluates option and matches the input with subsequent commands
    ## 1. List Users ##
    # If 1 comes back
    if [ "$option" -eq "1" ]
    then
      # Sets variable to the output of uname -a
      echo "-- List of Users --"
      echo "$complete"
      act_users="$(cat /etc/passwd | cut -d ':' -f 1 | sort -u)"
      # Prints the variable to the screen
      echo "$act_users"
      echo "$reset"
    ## 2. Create User ##
    # If 2 comes back
    elif [ "$option" -eq "2" ]
    then
      # Asks for the username to be given
      echo "-- Creating a User --"
      echo "Name of new user: "
      # Reads in the the username
      read user
      # Creates a user with the given username
      useradd $user
      # Prints the variable to the screen
      # MAKE IF STATEMENT
      echo "$complete"
      echo "User $user has been created"
      echo "$reset"
    ## 3. Delete User ##
    # If 3 comes back
    elif [ "$option" -eq "3" ]
    then
      # Asks for the username to be given
      echo "-- Deleting a User -- "
      echo "Name of the user to delete: "
      # Reads in the the username
      read user
      # Sets variable to the output of netstat / ss
      userdel $user
      # Prints the variable to the screen
      # MAKE IF STATEMENT
      echo "$complete"
      echo "User $user has been deleted"
      echo "$reset"
    ## 4. List Groups ##
    # If 4 comes back
    elif [ "$option" -eq "4" ]
    then
      # Sets variable to the output of ifconfig, looks for inet, cuts the field just after, and takes only the first line
      ipaddress="$(ifconfig | grep "inet" | cut -d " " -f 10 | head -n1)"
      # Prints the variable to the screen
      echo "IP Address: $ipaddress"
    ## 5. Create Group ##
    # If 5 comes back
    elif [ "$option" -eq "5" ]
    then
      # Sets variable to the output of who, and cuts everything out after the username
      users="$(who | cut -d " " -f 1)"
      # Prints the variable to the screen
      echo "Users Logged In:"
      echo "$users"
    ## 6. Delete Group ##
    # If 6 comes back
    elif [ "$option" -eq "6" ]
    then
      # Sets variable to the output of df
      usage="$(df)"
      # Prints the variable to the screen
      echo "Disk Usage:"
      echo "$usage"
    ## 7. Change User Password ##
    # If 7 comes back
    elif [ "$option" -eq "7" ]
    then
      # Sets variable to the output of ps -aux
      proclist="$(ps -aux)"
      echo "Process List:"
      # Prints the variable to the screen
      echo "$proclist"
    fi
done
