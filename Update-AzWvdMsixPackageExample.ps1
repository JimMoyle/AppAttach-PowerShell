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
        [System.String]$FullName, #Removed Array capability

        [Parameter(
            ParameterSetName = 'FullName',
            ValuefromPipelineByPropertyName = $true
        )]
        [System.String]$DisplayName,

        [Parameter(
            ParameterSetName = 'FullName',
            Position = 1,
            ValuefromPipelineByPropertyName = $true,
            Mandatory = $true
        )]
        [System.String]$ResourceGroupName,

        [Parameter(
            ParameterSetName = 'FullName',
            ValuefromPipelineByPropertyName = $true
        )]
        [System.String]$SubscriptionId,

        [Parameter(
            ParameterSetName = 'FullName',
            ValuefromPipelineByPropertyName = $true,
            ValuefromPipeline = $true
        )]
        [Alias('PackageAlias')]
        [Microsoft.Azure.PowerShell.Cmdlets.DesktopVirtualization.Models.Api20210712.ExpandMsixImage]$PackageInfo,

        [Parameter(
            ParameterSetName = 'FullName',
            ValuefromPipelineByPropertyName = $true
        )]
        [System.String[]]$HostPoolName,

        [Parameter(
            ParameterSetName = 'FullName',
            ValuefromPipelineByPropertyName = $true
        )]
        [Switch]$IsActive,

        [Parameter(
            ParameterSetName = 'FullName',
            ValuefromPipelineByPropertyName = $true
        )]
        [Alias('IsRegularRegistration')]
        [Switch]$LogOnBlocking,

        [Parameter(
            ParameterSetName = 'FullName',
            ValuefromPipelineByPropertyName = $true
        )]
        [psobject]$DefaultProfile,

        [Parameter(
            ParameterSetName = 'PipelineInput',
            ValuefromPipelineByPropertyName = $true,
            ValuefromPipeline = $true
        )]
        [Microsoft.Azure.PowerShell.Cmdlets.DesktopVirtualization.Models.Api20210712.MsixPackage]$InputObject
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