## This script backs up all given files in the current directory with a given extension into a separate folder ##

# Takes an extension as a script argument
$ext=$args[0]

Get-ChildItem ./ | Select-Object Name

Get-ChildItem ./ | where-object {$_.Extension -eq '.$extension'}

# Within the current directory, copy all files matching the argument to a folder called backup
Foreach ($file in $folder) {
    copy $fname backup/$fname
}
# Creates the folder backup if necessary
#if (!Backup)
New-Item -Name "backup" -ItemType "directory"

# Tell the user which files were backed up


