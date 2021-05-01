# Creating Users and Groups

# Take a CSV input

# Creates User accounts for each user in the CSV with their given password
# Create User
New-ADUser "$user"
# Password
$pass = Read-Host "Enter User Password" - AsSecureString

# Create the appropriate groups based on department

