# Sets the variable kb to the passed argument
$kb=$args[0]
# Sets the hf variable to zero
$hf=0

# Get list of hotfixes from multiple remote machines (use an array)
$list = Get-Hotfix -ComputerName 192.168.1.2, 192.168.1.3 -Credential XYZ\Administrator | ForEach-Object {
    # Prints that the script is searching
    Write-Host "Searching..."
    # If the current hotfix number is the same as the given KB number
    if ($_.HotFixID -eq $kb){
        # The hf variable is incremented
        $hf++
    }
}
# If the hf variable is equal to 1
if ($hf -eq 1) {
    # Prints that the hotfix was installed
    Write-Host "$kb hotfix was installed"
}
# Otherwise
else {
    # Prints that the hotfix was not installed
    Write-Host "$kb hotfix was not installed"
}
