## List Users By Group ##

# Sets the group variable to the passed argument
$group=$args[0]

# Prints out the group name
Write-Host "Group:" $group
# Lists all group members for the group, and loops through each
Get-ADGroupMember -Identity $group | ForEach-Object {
    # Print the current user's name
    Write-Host $_.SamAccountName
}
