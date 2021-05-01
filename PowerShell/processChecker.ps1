## This script checks a given process to see if it is running ##

# Takes a process ID as a script argument
$proc=$args[0]
$inf=1

# Takes sleep time (X) as an optional argument (provides a default value)
if ($args[1] -eq $null) {
    $sleep=30
}
else {
    $sleep=$args[1]
}
# Watches the process and check every X seconds to see if it is still running
while ($inf -eq 1) {
    Get-Process -Id $proc | Format-Table Id, ProcessName -autosize
#    if ($inf -eq 1) {
#        Write-Host "Process is running"
#    }
#    else {
#    }
    Start-Sleep $sleep
}

# Sets the output accordingly with the status of the process
