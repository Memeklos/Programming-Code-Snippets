#!/bin/bash

## Description ##
## This bash script prints a menu of user management options, lets the user select from the options, and prints the option ##

## Colors ##
# Sets the info variable to cyan
info=$'\u001b[36m'
# Sets the created variable to green
created=$'\e[1;32m'
# Sets the removed variable to red
removed=$'\033[0;31m'
# Sets the reset variable to white
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
      # Prints the heading
      echo "-- List of Users --"
      echo "$info"
      act_users="$(cat /etc/passwd | cut -d ':' -f 1 | sort -u)"
      # Prints the variable to the screen
      echo "$act_users"
      echo "$reset"
    ## 2. Create User ##
    # If 2 comes back
    elif [ "$option" -eq "2" ];
    then
      # Prints the heading
      echo "-- Creating a User --"
      # Asks for the username to be given
      echo "User to create: "
      # Reads in the the username
      read user
      # Creates a user with the given username
      useradd $user
      # Prints the variable to the screen
      # MAKE IF STATEMENT
      echo "$created"
      echo "User $user has been created"
      echo "$reset"
    ## 3. Delete User ##
    # If 3 comes back
    elif [ "$option" -eq "3" ];
    then
      # Prints the heading
      echo "-- Deleting a User -- "
      # Asks for the username to be given
      echo "User to delete: "
      # Reads in the the username
      read user
      # Sets variable to the output of netstat / ss
      userdel $user
      # Prints the variable to the screen
      # MAKE IF STATEMENT
      echo "$removed"
      echo "User $user has been deleted"
      echo "$reset"
    ## 4. List Groups ##
    # If 4 comes back
    elif [ "$option" -eq "4" ];
    then
      # Prints the heading
      echo "-- List of Groups --"
      # Prints the /etc/group file, cuts everything after the group name
      echo "$info"
      cat /etc/group | cut -d ':' -f 1
      echo "$reset"
    ## 5. Create Group ##
    # If 5 comes back
    elif [ "$option" -eq "5" ];
    then
      # Prints the heading
      echo "-- Creating a Group --"
      # Asks for the groupname to be given
      echo "Group to create: "
      # Reads in the the group
      read group
      # Creates the given group
      groupadd $group
      # Prints the variable to the screen
      # MAKE IF STATEMENT
      echo "$created"
      echo "Group $group has been created"
      echo "$reset"
    ## 6. Delete Group ##
    # If 6 comes back
    elif [ "$option" -eq "6" ];
    then
      # Prints the heading
      echo "-- Deleting a Group --"
      # Asks for the groupname to be given
      echo "Group to delete: "
      # Reads in the the group
      read group
      # Deletes the given group
      groupdel $group
      # Prints the variable to the screen
      # MAKE IF STATEMENT
      echo "$removed"
      echo "Group $group has been deleted"
      echo "$reset"
    ## 7. Change User Password ##
    # If 7 comes back
    elif [ "$option" -eq "7" ];
    then
      # Prints the heading
      echo "-- Changing a User's Password --"
      # Asks for the username to be given
      echo "User to create: "
      # Reads in the the username
      read user
      # Creates a user with the given username
      passwd $user
      # Prints that the password has been changed
      echo "$created"
      echo "Password change for user $user completed"
      echo "$reset"
    fi
done
