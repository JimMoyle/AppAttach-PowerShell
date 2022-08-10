function Get-AzAvdMsixPackageExample {
    [CmdletBinding(DefaultParameterSetName = 'Main')]

    Param (
        [Parameter(
            ParameterSetName = 'Main',
            ValuefromPipelineByPropertyName = $true,
            ValuefromPipeline = $true,
            Mandatory = $true
        )]
        [System.String]$ResourceGroupName,

        [Parameter(
            ParameterSetName = 'Main',
            ValuefromPipelineByPropertyName = $true
        )]
        [System.String]$SubscriptionId,

        [Parameter(
            ParameterSetName = 'Main',
            ValuefromPipelineByPropertyName = $true
        )]
        #This parameter should accept wildcard parameters: https://docs.microsoft.com/en-us/powershell/scripting/developer/cmdlet/supporting-wildcard-characters-in-cmdlet-parameters?view=powershell-7.2
        #Note [] denotes this accepts an array
        [System.String[]]$FullName,

        [Parameter(
            ParameterSetName = 'Main',
            ValuefromPipelineByPropertyName = $true
        )]
        #Note [] denotes this accepts an array
        #Change from mandatory to optional
        [System.String[]]$HostPoolName,

        [Parameter(
            ParameterSetName = 'Main',
            ValuefromPipelineByPropertyName = $true
        )]
        [psobject]$DefaultProfile,

        [Parameter(
            ParameterSetName = 'ResourceGroupObjectPipeline',
            ValuefromPipeline = $true
        )]
        #Note [] denotes this accepts an array
        #Note As ResourceGroup is the mandatory parameter we should be able to pipe by the type which you get from Get-AzResourceGroup
        [Microsoft.Azure.Commands.ResourceManager.Cmdlets.SdkModels.PSResourceGroup[]]$InputObject
    )

    begin {
        Set-StrictMode -Version Latest
    } # begin
    process {
        switch ($PSCmdlet.ParameterSetName) {
            ResourceGroupObjectPipeline { $InputObject }
            Main { write-output 'Main'}
            Default {}
        }

        <#
        We currently have undocumented parameters as part of this cmdlet, I'm not sure if these are intentional or not?
        [-Break]
        [-HttpPipelineAppend <SendAsyncStep[]>]
        [-HttpPipelinePrepend <SendAsyncStep[]>]
        [-Proxy <Uri>]
        [-ProxyCredential <PSCredential>]
        [-ProxyUseDefaultCredentials]
        #>

        <#
        Output currently contains the API version
        [Microsoft.Azure.PowerShell.Cmdlets.DesktopVirtualization.Models.Api20210712.MsixPackage]
        Output should be of type [Microsoft.Azure.PowerShell.Cmdlets.DesktopVirtualization.Models.MsixPackage]
        #>

    } # process
    end {} # end
}  #function Get-AzAvdMsixPackage