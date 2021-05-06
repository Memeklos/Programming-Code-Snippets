#!/usr/bin/env python

## This script is used to scrape information from a directory of files, create a JSON object for each file, and save the information to a JSON file. ##

# Import Libraries
import argparse
import json
import sys
import os

## Creates Argparse ##
# Creates the parser object
parser = argparse.ArgumentParser(description='This takes a full path as an argument using the -p option.', prog='File_Info.py', epilog='A witty saying to be determined.')
# Adds -p tag for file input
parser.add_argument('-p', '--path', help='the directory to be parsed', required=True)
try:
    # Sets the variable m to parse_args of parser
    m = parser.parse_args()
    print(m)

except:
    # Prints the help section
    parser.print_help(sys.stderr)
    exit(1)

## Collect and Print Information ##
# Declare dictionary
files = {}
data['files'] = []
# Takes info and creates a JSON object for each file (You’ll decide on the structure of this object)
data['files'].append({
    'name': 'Scott',
    'size': 'stackabuse.com',
    'modified': 'Nebraska'
})


os.chdir(m)
os.scandir(m)
# Dumps all the file JSON objects to a JSON file
# Opens JSON file
with open('file-attributes.json', 'w') as outfile:
    # Dumps to JSON file
    json.dump(files, outfile)
#f = open('file-attributes.json', "w")

# Close file
#f.close()

