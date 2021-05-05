## Creating Users and Groups - Active Directory ##
# This script takes the given csv filename and creates a user for each entry #

$ErrorActionPreference = "Stop"
# Set file variable to the passed argument
$fname=$args[0]
# Import CSV
$file=Import-Csv $fname -Delimiter ","

# Create User for each entry
$file | ForEach-Object {
        Write-Host "Creating user for" $_.Username
        New-ADUser `
            -SamAccountName $_.Username `
            -Name $_.Username `
            -GivenName $_.Firstname `
            -Surname $_.Lastname `
            -DisplayName $_.Username `
            -Path $_.Ou `
            -State $_.Province `
            -Department $_.Department `
            -AccountPassword (ConvertTo-secureString $_.Password -AsPlainText -Force) `
            -Enable $True
        # If the identity group is LocalAdmins
        if ($_.Identity -eq "LocalAdmins") {
            # Add user to the Administrators group
            Add-ADGroupMember -Identity Administrators -Members $_.Username
        }
        # Otherwise
        else {
            # Add user to the specified identity group
            Add-ADGroupMember -Identity $_.Identity -Members $_.Username
        }
        try {$group = Get-ADGroup -Identity $_.Department}
        catch {"$_.Department group does not exist. Creating group."}
        if ($group.SamAccountName -eq $_.Department) {
            # Add the current user to the group
            Add-ADGroupMember -Identity $_.Department -Members $_.Username
        }
        # Otherwise create the group
        else {
            try {
            New-ADGroup `
                -SamAccountName $_.Department `
                -Name $_.Department `
                -GroupScope Universal
            # Add the user to the group
            Add-ADGroupMember -Identity $_.Department -Members $_.Username
            } catch { "Cannot create a group with the same SAM Account Name."}
        }       
}
