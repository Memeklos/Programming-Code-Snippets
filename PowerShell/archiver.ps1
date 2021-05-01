## This script zip up any file in the current directory that hasn’t been modified in the given day/s ##

# Sets the days variable to the passed argument
$days=$args[0]
# Sets the today variable to the current date in the specified format
$today=Get-Date -Format "MM-dd-yyyy"

# Prints that the zip file is being created
Write-Host "Creating zip file"
# Finds the files with a modification date earlier than $days and sends them to an archived directory
Get-ChildItem ./ | Where{$_.LastWriteTime -lt (Get-Date).AddDays(-$days)} | Compress-Archive -CompressionLevel Optimal -DestinationPath "$today.Zip"
# Checks the folder for the name of the archive folder and prints that it has been created
Get-ChildItem ./ | Where-Object {$_.Name -eq "$today.Zip"} | ForEach-Object { Write-Host $_.Name "has been created" }
