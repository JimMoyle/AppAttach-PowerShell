function Update-AzWvdMsixPackageExample { # Should be Set-AzAvdMsixPackage
    [CmdletBinding(SupportsShouldProcess = $true, DefaultParameterSetName = 'FullName')]

    Param (
        [Parameter(
            ParameterSetName = 'FullName',
            Position = 0,
            ValuefromPipelineByPropertyName = $true,
            ValuefromPipeline = $true,
            Mandatory = $true
        )]
        [System.String[]]$FullName,

        [Parameter(
            ParameterSetName = 'DisplayName',
            Position = 0,
            ValuefromPipelineByPropertyName = $true,
            Mandatory = $true
        )]
        [System.String[]]$DisplayName,

        [Parameter(
            Position = 1,
            ValuefromPipelineByPropertyName = $true,
            Mandatory = $true
        )]
        [System.String]$ResourceGroupName,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [System.String]$SubscriptionId,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [Alias('FullName','Path')]
        [System.String]$DiskImagePath,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [System.String[]]$HostPoolName,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [Switch]$IsActive,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [Alias('IsRegularRegistration')]
        [Switch]$LogOnBlocking,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [psobject]$DefaultProfile
    )

    begin {
        Set-StrictMode -Version Latest
    } # begin
    process {

        if ($PSCmdlet.ShouldProcess("", "Operation")) {
            Write-Output 'WhatIf Result'
        }

    } # process
    end {} # end
}  #function Update-AzWvdMsixPackageExample