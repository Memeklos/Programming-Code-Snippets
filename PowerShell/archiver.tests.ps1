# Archiver Test
param (
    [Parameter(Mandatory)]
    [string] $Path
)

BeforeAll { 
    . $PSScriptRoot/archiver.ps1 $Path
}

Describe 'Archiver' {
    It 'Returns the name of the created archive with the current date.' {
        $today=Get-Date -Format "MM-dd-yyyy"
        $output = Get-ChildItem ./ | Where-Object {$_.Name -eq "$today.Zip"}
        $output | Should -Be "$today.Zip"
    }
}
