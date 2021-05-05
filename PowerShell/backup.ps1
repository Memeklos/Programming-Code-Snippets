## Backup ##
# This script back up the given file by making a copy with the .backup extension #

# Stops the script if an error occurs
$ErrorActionPreference = "Stop"
# Sets the fname variable to the given file name
$fname=$args[0]

# Copy the file to a new file with the .backup extension
Copy-Item $fname "$fname.backup"
# Check and then print out that file has been copied
Get-ChildItem ./ | Where-Object {$_.Extension -eq "$fname.backup"}
# Prints that the file has been backed up
Write-Host "Backed up $fname.backup"
