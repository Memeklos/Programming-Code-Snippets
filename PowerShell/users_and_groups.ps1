# Creating Users and Groups

# Take a CSV input

# Creates User accounts for each user in the CSV with their given password
# Create User
New-ADUser "$user"
# Password
$pass = Read-Host "Enter User Password" - AsSecureString

# Create the appropriate groups based on department

if (Get-ADUser -F { SamAccountName -eq $username }) {
        
        # If user does exist, give a warning
        Write-Warning "A user account with username $username already exists in Active Directory."
    }
    else {

        # User does not exist then proceed to create the new user account
    }
