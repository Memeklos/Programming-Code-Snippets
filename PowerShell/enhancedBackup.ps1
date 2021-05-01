## This script backs up all given files in the current directory with a given extension into a separate folder ##

# Takes an extension as a script argument
$ext=$args[0]
$folder="backup"
Get-ChildItem ./ | Select-Object Name

Get-ChildItem ./ | where-object {$_.Extension -eq '.$extension'}

# Creates the folder backup if necessary
if (Test-Path -path $folder -IsValid) {
    Write-Host "The directory $folder already exists"
}
else {
    New-Item -Name "$folder" -ItemType "directory"
    Write-Host "The directory $folder has been created"
}

# Within the current directory, copy all files matching the argument to a folder called backup
Foreach ($file in $folder) {
    copy $fname backup/$fname
}

# Tell the user which files were backed up


