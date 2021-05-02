# Backup Test
param (
    [Parameter(Mandatory)]
    [string] $Path
)

BeforeAll { 
    . $PSScriptRoot/backup.ps1 $Path
}

Describe 'Backup' {
    It 'Returns the name of the file that is created from the backup script' {
        $output = Get-ChildItem ./ | Where-Object {$_.Name -eq "$Path.backup"}
        $output | Should -Be "$Path.backup"
    }
}