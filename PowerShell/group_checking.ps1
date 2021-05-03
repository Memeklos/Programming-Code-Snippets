## Group Checking ##

# List the groups, grabs all SAM account names, and loops through each
Get-ADGroup -Filter * | Where-Object {$_.SamAccountName} | ForEach-Object {
    # Sets the group variable to the current group's SAM account name
    $group = $_.SamAccountName
    # Prints out the group name
    Write-Host "Group:" $_.SamAccountName
    # Lists all group members for the current group, and loops through each
    Get-ADGroupMember -Identity $group | ForEach-Object {
        # Print the current user's name
        Write-Host $_.SamAccountName
    }
    Write-Host "----"
}