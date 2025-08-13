Describe 'Initialize-TestEnvironment' {
  It 'imports module with custom assembly name' {
    . $PSScriptRoot/Shared.ps1
    { Initialize-TestEnvironment -ProjectName 'Example.3.CSharp' } | Should -Not -Throw
    Get-Command Get-PEURandomLetter | Should -Not -BeNullOrEmpty
  }
}
