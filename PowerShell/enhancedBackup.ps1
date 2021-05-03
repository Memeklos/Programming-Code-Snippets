## Enhanced Backup ##
# This script backs up all given files in the current directory with a given extension into a separate folder #

# Sets the ext variable to the first argument
$ext=$args[0]
# Sets the folder variable to the string "backup"
$folder="backup"

# If the directory is already created, prints that it exists
if (Test-Path -path $folder) {
    Write-Host "The directory $folder already exists"
}
# Otherwise, creates the directory and prints that it has been created
else {
    New-Item -Name "$folder" -ItemType "directory"
    Write-Host "The directory $folder has been created"
}

# Within the current directory, get the attributes of all files where the extension matches the ext variable
Get-ChildItem ./ | Where-Object {$_.Extension -eq "$ext"} | ForEach-Object {
    # Copies the current item to the folder directory
    Copy-Item $_.Name -Destination ./$folder  
}
# Gets the attributes of all files in the folder directory and prints out that it has backed up each file and the file name
Get-ChildItem ./$folder | Where-Object {$_.Extension -eq "$ext"} | ForEach-Object { Write-Host "Backed up" $_.Name }
