# Create Users Test
param (
    [Parameter(Mandatory)]
    [string] $Path
)

BeforeAll { 
    . $PSScriptRoot/createUsers.ps1 $Path
}

Describe 'Create Users' {
    It 'Returns the usernames of the users that have been created.' {
        $file=Get-Content -Path $Path
        foreach ($user in $file) {
            Get-LocalUser -Name $user | Should -Be "$user"
        }
    }
}