#!/usr/bin/env python

## This script is used to scrape information from a directory of files, create a JSON object for each file, and save the information to a JSON file. ##

# Import Libraries
import argparse
import json
import sys

# Takes full path as an argument

# Gets information of every file in directory (not recursive)

# Takes info and creates a JSON object for each file (You’ll decide on the structure of this object)

# Dumps all the file JSON objects to a JSON file

## Creates Argparse ##
# Creates the parser object
parser = argparse.ArgumentParser(description='This takes a full path as an argument using the -p option, scrapes information of every file in the directory, creates a JSON object for each file, and dumps all the JSON objects to a JSON file.', prog='File_Info.py', epilog='A witty saying to be determined.')
# Adds -f tag for file input
parser.add_argument('-p', '--path', help='the directory to be parsed', required=True)
try:
    # Sets the variable m to parse_args of parser
    m = parser.parse_args()

except:
    # Prints the help section
    parser.print_help(sys.stderr)
    exit(1)

## Unzips and Reads File ##
# Opens JSON file
f = open('companies.json', "r")
# Creates newlines
fr = f.read().split("\n")

## Collect and Print Information ##
# Declare dictionary
rounds = {}

# Loop through file #
for i in fr:
   # Tries the following code for the current line
   try:
     # Sets temporary variable(n) to the current json line
     n = json.loads(i)
     # Sets temporary variable(company) to the current line's company
     company = n["name"]
     # Sets temporary variable(year) to the current line's year
     year = n["founded_year"]
     # Sets temporary variable(round) to the current line's round
     rounds = n["funding_rounds"]
     # Sets variables for rounds A-D to 0
     rA = 0
     rB = 0
     rC = 0
     rD = 0
     # Loops through rounds dictionary
     for r in rounds:
       # If the round code is "a"
       if r["round_code"] == "a":
          # Sets variable for round A to the raised amount
          rA = r["raised_amount"]
       # If the round code is "b"
       elif r["round_code"] == "b":
          # Sets variable for round B to the raised amount
          rB = r["raised_amount"]
       # If the round code is "c"
       elif r["round_code"] == "c":
          # Sets variable for round C to the raised amount
          rC = r["raised_amount"]
       # If the round code is "d"
       elif r["round_code"] == "d":
          # Sets variable for round D to the raised amount
          rD = r["raised_amount"]
     # Prints the variables out
     print(company + ' - ' + str(year) + ' - ' + str(rA) + ' - ' + str(rB) + ' - ' + str(rC) + ' - ' + str(rD))
   # If it doesn't work
   except:
     pass

# Close file
f.close()
