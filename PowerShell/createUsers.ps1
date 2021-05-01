## This script creates new local user accounts ##

# Sets the fname variable to the given argument
$fname=$args[0]

# Read in usernames from the file
$file=Get-Content -Path $fname

# Takes the password from the user
$pass=Read-Host "Enter the user password" -AsSecureString

# Loops through the file
foreach ($user in $file) {
    # Creates a local user account for the user on the current line of the file
    New-LocalUser -Name "$user" -Password $pass -Description "A user from the $fname file."
}
