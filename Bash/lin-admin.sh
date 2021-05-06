#!/bin/bash

## Description ##
## This bash script prints a menu of linux administration options ##

## Colors ##
# Sets the info variable to cyan
info=$'\u001b[36m'
# Sets the created variable to green
created=$'\e[1;32m'
# Sets the removed variable to red
removed=$'\033[0;31m'
# Sets the reset variable to white
reset=$'\033[0m'

option=0
User_Management() {
# Loops until the option q (quit) comes back
    until [ "$option" -eq "8" ]
    do
        ## Menu ##
        # Prints the menu
        printf "\n------------- Menu: -------------"
        printf "\n|    1. List Users              |"
        printf "\n|    2. Create User             |"
        printf "\n|    3. Delete User             |"
        printf "\n|    4. List Groups             |"
        printf "\n|    5. Create Group            |"
        printf "\n|    6. Delete Group            |"
        printf "\n|    7. Change User Password    |"
        printf "\n|    8. Exit                    |"
        printf "\n---------------------------------"
        echo "$info"
        printf "\nEnter your choice [ 1 - 8 ]$reset\n"
        # Reads in user's choice
        read option

        # Evaluates option and matches the input with subsequent commands
        ## 1. List Users ##
        # If 1 comes back
        if [ "$option" -eq "1" ]
        then
            # Prints the heading
            echo "--------- List of Users ---------"
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
            echo "-------- Creating a User --------"
            # Asks for the username to be given
            echo "User: "
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
            echo "-------- Deleting a User --------"
            # Asks for the username to be given
            echo "User: "
            # Reads in the the username
            read user
            # Sets variable to the output of netstat / ss
            userdel $user
            # Prints the variable to the screen
            echo "$removed"
            echo "User $user has been deleted"
            echo "$reset"
        ## 4. List Groups ##
        # If 4 comes back
        elif [ "$option" -eq "4" ];
        then
            # Prints the heading
            echo "-------- List of Groups ---------"
            # Prints the /etc/group file, cuts everything after the group name
            echo "$info"
            cat /etc/group | cut -d ':' -f 1
            echo "$reset"
        ## 5. Create Group ##
        # If 5 comes back
        elif [ "$option" -eq "5" ];
        then
            # Prints the heading
            echo "------- Creating a Group --------"
            # Asks for the groupname to be given
            echo "Group to create: "
            # Reads in the the group
            read group
            # Creates the given group
            groupadd $group
            # Prints the variable to the screen
            echo "$created"
            echo "Group $group has been created"
            echo "$reset"
        ## 6. Delete Group ##
        # If 6 comes back
        elif [ "$option" -eq "6" ];
        then
            # Prints the heading
            echo "-------  Delete a Group   -------"
            # Asks for the groupname to be given
            echo "Group to delete: "
            # Reads in the the group
            read group
           # Deletes the given group
           groupdel $group
           # Prints the variable to the screen
           echo "$removed"
           echo "Group $group has been deleted"
           echo "$reset"
       ## 7. Change User Password ##
       # If 7 comes back
       elif [ "$option" -eq "7" ];
       then
           # Prints the heading
           echo "---  Change a User Password   ---"
           # Asks for the username to be given
           echo "User: "
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
}

Backup_Restore() {
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


## Main ##
selection=0

until [ "$option" -eq "8" ]
do
    printf "\n------------- Menu: -------------"
    printf "\n|    1. User Management         |"
    printf "\n|    2. Backup or Restore       |"
    printf "\n|    8. Exit                    |"
    printf "\n---------------------------------"
    echo "$info"
    printf "\nEnter your choice [ 1 - 8 ]$reset\n"
    # Reads in user's choice
    read selection
    if [ "$selection" -eq "1" ]
    then
        User_Management
    elif [ "$selection" -eq "2" ]
    then
        Backup_Restore
    fi
done
