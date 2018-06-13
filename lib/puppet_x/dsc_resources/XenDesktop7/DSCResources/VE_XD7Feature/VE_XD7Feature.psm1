Import-LocalizedData -BindingVariable localizedData -FileName VE_XD7Feature.Resources.psd1;

function Get-TargetResource {
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSDSCUseVerboseMessageInDSCResource', '')]
    [OutputType([System.Collections.Hashtable])]
    param (
        [Parameter(Mandatory)]
        [ValidateSet('Controller','Studio','Storefront','Licensing','Director')]
        [System.String] $Role,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [System.String] $SourcePath,

        [Parameter()]
        [AllowNull()]
        [System.Management.Automation.PSCredential]
        [System.Management.Automation.CredentialAttribute()]
        $Credential,

        [Parameter()]
        [ValidateSet('Present','Absent')]
        [System.String] $Ensure = 'Present'
    )
    process {

        $targetResource = @{
            Role = $Role;
            SourcePath = $SourcePath;
            Ensure = 'Absent';
        }

        if (TestXDInstalledRole -Role $Role) {
            $targetResource['Ensure'] = 'Present';
        }

        return $targetResource;

    } #end process
} #end function Get-TargetResource


function Test-TargetResource {
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param (
        [Parameter(Mandatory)]
        [ValidateSet('Controller','Studio','Storefront','Licensing','Director')]
        [System.String] $Role,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [System.String] $SourcePath,

        [Parameter()]
        [AllowNull()]
        [System.Management.Automation.PSCredential]
        [System.Management.Automation.CredentialAttribute()]
        $Credential,

        [Parameter()]
        [ValidateSet('Present','Absent')]
        [System.String] $Ensure = 'Present',

        [Parameter()] [ValidateNotNullOrEmpty()]
        [System.String] $LogPath = (Join-Path -Path $env:TMP -ChildPath '\Citrix\XenDesktop Installer')
    )
    process {

        $targetResource = Get-TargetResource @PSBoundParameters;
        if ($Ensure -eq $targetResource.Ensure) {

            Write-Verbose ($localizedData.ResourceInDesiredState -f $Role);
            return $true;
        }
        else {

            Write-Verbose ($localizedData.ResourceNotInDesiredState -f $Role);
            return $false;
        }

    } #end process
} #end function Test-TargetResource

function Set-TargetResource {
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', 'DSCMachineStatus')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', 'global:DSCMachineStatus')]
    param (
        [Parameter(Mandatory)]
        [ValidateSet('Controller','Studio','Storefront','Licensing','Director')]
        [System.String] $Role,

        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [System.String] $SourcePath,

        [Parameter()]
        [AllowNull()]
        [System.Management.Automation.PSCredential]
        [System.Management.Automation.CredentialAttribute()]
        $Credential,

        [Parameter()]
        [ValidateSet('Present','Absent')]
        [System.String] $Ensure = 'Present',

        [Parameter()] [ValidateNotNullOrEmpty()]
        [System.String] $LogPath = (Join-Path -Path $env:TMP -ChildPath '\Citrix\XenDesktop Installer')
    )
    begin {

        if (-not (Test-Path -Path $SourcePath -PathType Container)) {
            throw ($localizedData.InvalidSourcePathError -f $SourcePath);
        }

    }
    process {

        if ($Ensure -eq 'Present') {

            Write-Verbose ($localizedData.InstallingRole -f $Role);
            $installArguments = ResolveXDServerSetupArguments -Role $Role -LogPath $LogPath;
        }
        else {

            ## Uninstall
            Write-Verbose ($localizedData.UninstallingRole -f $Role);
            $installArguments = ResolveXDServerSetupArguments -Role $Role -LogPath $LogPath -Uninstall;
        }

        Write-Verbose ($localizedData.LogDirectorySet -f $logPath);
        Write-Verbose ($localizedData.SourceDirectorySet -f $SourcePath);

        $startWaitProcessParams = @{
            FilePath = ResolveXDSetupMedia -Role $Role -SourcePath $SourcePath;
            ArgumentList = $installArguments;
        }

        if ($PSBoundParameters.ContainsKey('Credential')) {
            $startWaitProcessParams['Credential'] = $Credential;
        }

        $exitCode = StartWaitProcess @startWaitProcessParams -Verbose:$Verbose;
        # Check for reboot
        if (($exitCode -eq 3010) -or ($Role -eq 'Controller')) {
            $global:DSCMachineStatus = 1;
        }

    } #end process
} #end function Set-TargetResource


$moduleRoot = Split-Path -Path $MyInvocation.MyCommand.Path -Parent;

## Import the XD7Common library functions
$moduleParent = Split-Path -Path $moduleRoot -Parent;
Import-Module (Join-Path -Path $moduleParent -ChildPath 'VE_XD7Common');

Export-ModuleMember -Function *-TargetResource;
