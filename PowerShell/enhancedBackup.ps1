## This script backs up all given files in the current directory with a given extension into a separate folder ##

# Sets the ext variable to the first argument
$ext=$args[0]
# Sets the folder variable to the string "backup"
$folder="backup"

# If the directory is already created, prints that it exists
if (Test-Path -path $folder -IsValid) {
    Write-Host "The directory $folder already exists"
}
# Otherwise, creates the directory and prints that it has been created
else {
    New-Item -Name "$folder" -ItemType "directory"
    Write-Host "The directory $folder has been created"
}

#Get-ChildItem ./ | Select-Object Name

# Within the current directory, copy all files matching the argument to a folder called backup
#Get-ChildItem ./ | Where-Object {$_.Extension -eq '.$extension'} | ForEach-Object { Copy-Item -Path $file.FullName -Destination $folder }
$files = Get-ChildItem ./ | Where-Object {$_.Extension -eq '.$extension'} | ForEach-Object -Begin {
    $results = @()
} -Process {
    #Create and store message
    $results += "Hi, my name is $_!"
} -End {
    #Count messages and output
    Write-Host "Total messages: $($results.Count)"
    $results
}
# Tell the user which files were backed up


