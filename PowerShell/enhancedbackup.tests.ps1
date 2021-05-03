# Enhanced Backup Test
param (
    [Parameter(Mandatory)]
    [string] $Path
)

BeforeAll { 
    . $PSScriptRoot/enhancedbackup.ps1 $Path
}

Describe 'Enhanced Backup' {
    It 'Returns the files with the given extension' {
        $folder="backup"
        $output = Get-ChildItem ./$folder | Where-Object {$_.Extension -eq "$Path"} | ForEach-Object { Write-Host $_.Name }
        foreach ($file in $output) {
            $file | Should -Be "$file.$Path"
        }
    }
    It 'Returns that the folder backup exists' {
        $output = Test-Path -path $folder
        $output | Should -Be "true"
    }
}
