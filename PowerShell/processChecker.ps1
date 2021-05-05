## Process Checker ##
# This script checks a given process to see if it is running #

# Sets the proc variable to the given process ID
$proc=$args[0]
# Sets the inf (infinity) variable
$inf=0

# If no sleep variable is given, sets a default sleep variable
if ($args[1] -eq $null) {
    $sleep=15
}
# Otherwise, uses the given argument to set the sleep variable
else {
    $sleep=$args[1]
}

# Loops until canceled
while ($inf -eq 0) {
    # Uses the given process ID to see if the process is listed
    $check=Get-Process -Id $proc -ErrorAction SilentlyContinue
    # If the process is not listed
    if ($check -eq $null) {
        # Prints that the process is not running
        Write-Host "Process is not running"
    }
    # If the process is listed
    else {
        # Prints that the process is running
        Write-Host "Process is running"
    }
    # Starts the sleep timer
    Start-Sleep $sleep
}
