Create Local User Accounts

## This script creates new local user accounts ##

# Takes a filename as a parameter



# Takes the password from the user

ForEach-Object { Add-Content -Path .\LineNumbers.txt -Value "This is line $_." }
Get-Content -Path .\LineNumbers.txt

# Uses the same default password for each account




# Creates a local user account for each user in the text file

New-LocalUser -Name "User02" -Description "Description of this account."




