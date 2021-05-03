## Get Related Users ##

# Sets the username variable to the passed argument
$username=$args[0]

# Find all the users that are in the same group as the user
Get-ADPrincipalGroupMembership $username | Where-Object {$_.SamAccountName} | ForEach-Object {
    # Sets the group variable to the current group's SAM account name
    $group = $_.SamAccountName
    # Prints out the group name
    Write-Host "Group:" $group
    # Lists all group members for the current group, and loops through each
    Get-ADGroupMember -Identity $group | ForEach-Object {
        # Print the current user's name
        Write-Host $_.SamAccountName
    }
    Write-Host "----"
}
