## This script back up the given file by making a copy with the .backup extension ##
# set-executionpolicy -executionpolicy bypass -scope currentuser
# Takes the file name as a script argument
$fname=$args[0]

# Copy the file to a new file with the .backup extension
Copy-Item $fname "$fname.backup"
# Check and then print out that file has been copied
Get-ChildItem ./ | Where-Object {$_.Extension -eq ".backup"} | ForEach-Object { Write-Host "Backed up" $_.Name }
