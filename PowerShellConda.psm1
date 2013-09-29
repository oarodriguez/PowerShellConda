<#
    Copyright (c) 2013, Abel Rodríguez, see LICENSE for details.
#>
Set-StrictMode -Version Latest

Push-Location $PSScriptRoot

$condaCommandExists = (Get-Command conda -CommandType Application)
if (!$condaCommandExists) 
{
    Write-Error 'Couldn''t find conda in your system. Check your PATH and import this module again.'
}
else 
{    
    . .\Info.ps1
}

Pop-Location
