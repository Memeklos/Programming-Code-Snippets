## This script back up the given file by making a copy with the .backup extension ##

# Takes the file name as a script argument
$fname=$args[0]

# Copy the file to a new file with the .backup extension
copy $fname "$fname.backup"
