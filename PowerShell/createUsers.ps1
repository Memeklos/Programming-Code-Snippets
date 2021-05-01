## This script creates new local user accounts ##

# Takes a filename as a parameter
$fname=$args[0]

# Read in usernames from the file
$file=Get-Content -Path $fname

# Takes the password from the user
$pass=Read-Host "Enter the user password" -AsSecureString

# Creates a local user account for each user in the text file
foreach ($i in $file) {
    New-LocalUser -Name "$i" -Password $pass -Description "A user from the $fname file."
}
