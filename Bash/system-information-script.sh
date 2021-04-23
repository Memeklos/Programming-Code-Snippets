#!/bin/bash

## Description ##
## This bash script prints a menu of system information, lets the user select from the options, and prints the option ##

# Loops until 8 comes back
until [ "$option" -eq "8" ]
do
    ## Menu ##
    # Prints the menu
    printf "\n ------------------\n Menu:\n ------------------\n 1. OS Info\n 2. Hostname\n 3. Network info\n"
    printf " 4. IP Address only\n 5. Users logged in\n 6. Disk Usage\n 7. Process list\n 8. Exit\n\n Enter your choice [ 1 - 8 ]\n"
    # Reads in user's choice
    read option

    # Evaluates option and matches the input with subsequent commands
    ## 1. OS Info ##
    # If 1 comes back
    if [ "$option" -eq "1" ]
    then
      # Sets variable to the output of uname -a
      os_info="$(uname -a)"
      # Prints the variable to the screen
      echo "OS Info: $os_info"
    ## 2. Hostname ##
    # If 2 comes back
    elif [ "$option" -eq "2" ]
    then
      # Sets variable to the output of hostname
      host="$(hostname)"
      # Prints the variable to the screen
      echo "Hostname: $host"
    ## 3. Network info ##
    # If 3 comes back
    elif [ "$option" -eq "3" ]
    then
      # Sets variable to the output of netstat / ss
      netinfo="$(netstat / ss)"
      # Prints the variable to the screen
      echo "$netinfo"
    ## 4. IP Address ##
    # If 4 comes back
    elif [ "$option" -eq "4" ]
    then
      # Sets variable to the output of ifconfig, looks for inet, cuts the field just after, and takes only the first line
      ipaddress="$(ifconfig | grep "inet" | cut -d " " -f 10 | head -n1)"
      # Prints the variable to the screen
      echo "IP Address: $ipaddress"
    ## 5. Users Logged In ##
    # If 5 comes back
    elif [ "$option" -eq "5" ]
    then
      # Sets variable to the output of who, and cuts everything out after the username
      users="$(who | cut -d " " -f 1)"
      # Prints the variable to the screen
      echo "Users Logged In:"
      echo "$users"
    ## 6. Disk Usage ##
    # If 6 comes back
    elif [ "$option" -eq "6" ]
    then
      # Sets variable to the output of df
      usage="$(df)"
      # Prints the variable to the screen
      echo "Disk Usage:"
      echo "$usage"
    ## 7. Process List ##
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
