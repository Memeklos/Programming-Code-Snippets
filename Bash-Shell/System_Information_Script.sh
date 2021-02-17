#!/bin/bash

## This bash script collects some basic system information ##

## Header ##
# Prints the header
echo "------System Information Script------"

## Kernel Version ##
# Places the output of the uname version command into a variable
kernel_ver="$(uname -v)"
kernel_rel="$(uname -r)"
# Prints the kernel version and release
echo "Kernel Version: $kernel_ver"
echo "Kernel Release: $kernel_rel"

## Total System Users ##
# Prints the /etc/passwd file and counts the number of users
total_users="$(cat /etc/passwd | wc -l)"
# Prints the total number of users
echo "Total System Users: $total_users"

## System User Account Names ##
# Prints the /etc/passwd file and grabs only the usernames
sys_users="$(cat /etc/passwd | cut -d ':' -f 1)"
# Prints the usernames
echo "System User Account Names:"
#echo "$sys_users"

## Total of Root Commands Run ##
# Prints the /etc/passwd file and counts the number of commands
root_cmd="$(cat /root/.bash_history | wc -l)"
# Prints the number of commands
echo "Total Root Commands: $root_cmd"

## Actual Users ##
# Prints a de-duplicated list of users that have actually logged in at some point
act_users="$(last | head -n -2 | grep -v "reboot" | cut -d " " -f 1 | sort -u)"
# Prints actual users
echo "Actual Users:"
echo "$act_users"

## C Source-Code File List ##
# Finds a list of C source-code files files on the system
c_source="$(find / -name "*.c")"
# Prints list of C source-code files
echo "C Source Code File List:"
echo "$c_source"

## Files In /etc/ Containing `Documentation` ##
# Finds files in /etc/, filters by those with the word -documentation-, and prints them
docu_files="$(find /etc/ -type f -exec grep "documentation" '{}' \; -print)"
# Prints list of files
echo "Files Containing 'Documentation':"
echo "$docu_files"

## Machine's CPU Type ##
# Prints the /proc/cpuinfo, find the `model name`, cuts the field after, and uses only unique portions
cpu_type="$(cat /proc/cpuinfo | grep -i 'model name' | cut -d ':' -f 2 | sort -u)"
# Prints out the CPU type
echo "CPU Type: $cpu_type"

## List With `sd` In The Title ##
# Finds a list of files in /dev/ which begin with the letters “sd”
sd_files="$(find /dev/ -name "sd*")"
# Prints list of sd files
echo "List of files with 'sd' in the title"
echo "$sd_files"

## Main Network Adapter’s MAC Address ##
# Uses grep to find the `ether` field in ifconfig, and cuts the field
mac_addr="$(ifconfig | grep "ether" | cut -d " " -f 10)"
# Prints the network adapter MAC address
echo "Main Network Adapter MAC Address: $mac_addr"
