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
echo "$sys_users"

## Total of Root Commands Run ##
# Prints the /etc/passwd file and counts the number of commands
root_cmd="$(cat /root/.bash_history | wc -l)"
# Prints the number of commands
echo "Total Root Commands: $root_cmd"

## De-duplicated list of users that have actually logged in at some point
#act_users="$()"
echo "Actual Users: $act_users"
#◦ Relevant commands: last, cut, sort, uniq

## C Source-Code File List ##
## A list of any C source-code files files on the system (those ending in “.c”)
c_source="$(find -name "*.c")"
echo "C Source Code File List:"
echo "$c_source"

#7) A list of any files in /etc/ containing the word “documentation”
#docu_files="$()"
echo "Files Containing 'Documentation': $docu_files"
#◦ Relevant commands: find, cat, grep

#8) The type of CPU in use on the machine
#cpu_type="$()"
echo "CPU Type: $cpu_type"
#◦ Relevant files: /proc/cpuinfo (the “model name” field)
#◦ Relevant commands: cat, grep, cut

#9) A list of files in /dev/ which begin with the letters “sd...”
#sd_files="$(find /dev/ -name "sd")"
echo "$sd_files"

#10) Your main network adapter’s MAC address
#mac_addr="$()"
echo "Main Network Adapter MAC Address: $mac_addr"
#◦ Relevant commands: ip a, grep, cut
#◦ Hint: Look for “link/ether” in the output
