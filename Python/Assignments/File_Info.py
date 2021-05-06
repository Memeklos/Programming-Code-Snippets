#!/usr/bin/env python

## This script is used to scrape information from a directory of files, create a JSON object for each file, and save the information to a JSON file. ##

# Import Libraries
import argparse
import json
import sys
import os
import time

## Creates Argparse ##
# Creates the parser object
parser = argparse.ArgumentParser(description='This takes a full path as an argument using the -p option.', prog='File_Info.py', epilog='A witty saying to be determined.')
# Adds -p tag for file input
parser.add_argument('-p', '--path', help='the directory to be parsed', required=True)
try:
    # Sets the variable m to parse_args of parser
    m = parser.parse_args()
    path = m.path

except:
    # Prints the help section
    parser.print_help(sys.stderr)
    exit(1)

## Collect and Print Information ##
# Declare dictionary
data = {}
data['files'] = []

# Sets the dire variable to the output of os.scandir
dire = os.scandir(path)

# Loops through the directory
for i in dire :
    # Checks if the item is a file
    if i.is_file():
        # Sets the fname variable to the file's name
        fname = i.name
        # Sets the modtime variable to the file's modified time
        modtime = time.ctime(os.path.getmtime(i))
        # Sets the size variable to the file's size in bytes
        size = os.path.getsize(i)
        # Takes info and creates a JSON object for each file
        data['files'].append({
            'filename': fname,
            'size': size,
            'modified': modtime
        })
dire.close()

# Dumps all the file JSON objects to a JSON file
# Opens JSON file
with open('file-attributes.json', 'w') as outfile:
    # Dumps to JSON file
    json.dump(data, outfile)

# Close file
outfile.close()
