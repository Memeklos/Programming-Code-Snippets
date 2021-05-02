# Process Checker Test
param (
    [Parameter(Mandatory)]
    [string] $Path
)

BeforeAll { 
    . $PSScriptRoot/processChecker.ps1 $Path
}

Describe 'Process Checker' {
    It 'Returns that the process is running' {
        $output = Get-Process -Id $proc -ErrorAction SilentlyContinue
        $output | Should -BeTrue
    }
}