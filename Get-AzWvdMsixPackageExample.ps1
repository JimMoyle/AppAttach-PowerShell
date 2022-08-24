function Get-AzWvdMsixPackageExample {
    # Should be Get-AzAvdMsixPackage
    [CmdletBinding()]

    Param (
        [Parameter(
            ValuefromPipelineByPropertyName = $true,
            ValuefromPipeline = $true
            #removed mandatory
            #Running command with no parameters should get all Packages: See Get-AzVM
        )]
        [System.String]$ResourceGroupName,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [System.String]$SubscriptionId,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        #This parameter should accept wildcard parameters: https://docs.microsoft.com/en-us/powershell/scripting/developer/cmdlet/supporting-wildcard-characters-in-cmdlet-parameters?view=powershell-7.2
        #Current  Azure Command list that allow parameters: https://1drv.ms/u/s!Attq59Uc_Owghc8x7EJ59n40-5MxJw?e=O89Xpk
        #Note [] denotes this accepts an array
        [System.String[]]$FullName,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        #Note [] denotes this accepts an array
        #Change from mandatory to optional
        [System.String[]]$HostPoolName,

        [Parameter(
            ValuefromPipelineByPropertyName = $true
        )]
        [psobject]$DefaultProfile

        <#
        [Parameter(
            ParameterSetName = 'ResourceGroupObjectPipeline',
            ValuefromPipeline = $true
        )]
        Note [] denotes this accepts an array
        Note As ResourceGroup is the mandatory parameter we should be able to pipe by the type which you get from Get-AzResourceGroup
        [Microsoft.Azure.Commands.ResourceManager.Cmdlets.SdkModels.PSResourceGroup[]]$InputObject
        As we now don't have any mandatory params, taking resource group input as mandatory shouldn't be necessary.
        #>
    )

    begin {
        Set-StrictMode -Version Latest
    } # begin
    process {

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

        <#
        Output Object should have the following methods:
        RemoveHostPoolByName <string>
        AddHostPoolByName <string>
        Enable <bool>

        Commands from Azure with non-standard methods are here:
        https://1drv.ms/u/s!Attq59Uc_Owghc8s4eiWy91qieezAQ?e=1ZrNYD
        #>

        <#
        Abbreviated Output should be:
        DisplayName IsActive IsRegularRegistration Version
        ----------- -------- --------------------- -------
        XML Notepad     True                 False 2.8.0.60
        #>
        
    } # process
    end {} # end
}  #function Get-AzWvdMsixPackageExample