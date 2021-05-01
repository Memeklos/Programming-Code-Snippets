## This script zip up any file in the current directory that hasn’t been modified in the given day/s ##

# Takes the numbers of days as a parameter


Get-ChildItem c:\folder | Where{$_.LastWriteTime -gt (Get-Date).AddDays(-7)}
# Name the new zip file with the current date


