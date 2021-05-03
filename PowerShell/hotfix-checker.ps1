# Sets the variable kb to the passed argument
$kb=$args[0]
# Sets the 
$hf=0

# Get list of hotfixes from multiple remote machines (use an array)
$list = Get-Hotfix -ComputerName 192.168.1.2, 192.168.1.3 -Credential XYZ\Administrator | ForEach-Object {
    Write-Host "Searching..."
    if ($_.HotFixID -eq $kb){
        $hf++
    }
}
# Check to see if the hotfix is installed, output results
if ($hf -eq 1) {
    Write-Host "$kb was installed"
}
else {
    Write-Host "$kb was not installed"
}
