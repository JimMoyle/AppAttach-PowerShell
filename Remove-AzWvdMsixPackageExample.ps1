function Remove-AzWvdMsixPackageExample {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High', DefaultParameterSetName = 'Main')]

    Param (
        [Parameter(
            ParameterSetName = 'Main',
            Position = 0,
            ValuefromPipelineByPropertyName = $true,
            ValuefromPipeline = $true,
            Mandatory = $true
        )]
        [System.String[]]$FullName,

        [Parameter(
            ParameterSetName = 'Main',
            ValuefromPipelineByPropertyName = $true,
            Mandatory = $true
        )]
        [System.String]$ResourceGroupName,

        [Parameter(
            ParameterSetName = 'Main',
            ValuefromPipelineByPropertyName = $true
        )]
        [System.String]$SubscriptionId,
        
        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [Switch]$PassThru,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [Switch]$Force,

        [Parameter(
            ParameterSetName = 'MsixPackageObjectPipeline',
            ValuefromPipeline = $true
        )]
        #Note [] denotes this accepts an array
        #Note Input pipeline should be of type [Microsoft.Azure.PowerShell.Cmdlets.DesktopVirtualization.Models.MsixPackage]
        [Microsoft.Azure.PowerShell.Cmdlets.DesktopVirtualization.Models.Api20210712.MsixPackage[]]$InputObject
    )

    begin {
        Set-StrictMode -Version Latest
    } # begin
    process {
        
    } # process
    end {} # end
}  #function Remove-AzWvdMsixPackageExample