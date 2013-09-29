<#
    Copyright (c) 2013, Abel Rodríguez, see LICENSE for details.
#>
Set-StrictMode -Version Latest

<#
.Synopsis
    Finds the directory of Anaconda base installation and return
    its path.
.DESCRIPTION
    This cmdlet finds the directory where Anaconda base system is
    installed (python, third party packages, etc.), and return its 
    absolute path.
.EXAMPLE
    Get-CondaRoot
    C:\Anaconda
.EXAMPLE
    Get-CondaRoot
    C:\Path\To\Your\Anaconda\Installation    
#>
function Get-CondaRoot
{
    [CmdletBinding()]
    [OutputType([String])]
    Param()

    Process
    {
        $infoRegex = '(?s) *root environment : (.*?)\n'
        $condaInformation = conda info | Out-String

        if($condaInformation -match $infoRegex) { $Matches[1] }
        else 
        {
            Write-Error 'Anaconda root environment not found.'
        }

    }

}