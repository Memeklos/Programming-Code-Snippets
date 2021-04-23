#!/bin/bash

## This bash script collects some information regarding the system breach ##

## Header ##
# Prints the header
echo "------Hunting For Hackers Script------"

## Problem 1 ##
# Copy /var/log/auth.log to a new file
cp /var/log/auth.log UserLog.txt
# Filter out lines with the standard IP address
grep -v "192.168.1.69" UserLog.txt > SusLog # && mv tmpfile UserLog.txt
# Filter by lines that contain the 192.168. portion
grep "192.168." SusLog > tmpfile || mv tmpfile SusLog
# tmp file contains the lines that do not have the normal ip address (aka leaves the one we want)

## Problem 2 ##
# Find user penelope in /etc/group
grep "penelope" /etc/group

## Problem 3 ##
# Copy /etc/passwd to a new file
cp /etc/passwd FindUserRoot.txt
# Filter out lines with a UID of 0
grep ":x:0" FindUserRoot.txt

## Problem 4 ##
# Searches through files, checks current file against MD5 hash
find . -type f -exec bash -c 'md5sum "$0" | grep -q 81749d0a1c143b690588721931fa96d100a4ae27e6b713c18ed47e335a30529c2a22fb5344057f7019118d99335fa807 && echo $0' {} \;
