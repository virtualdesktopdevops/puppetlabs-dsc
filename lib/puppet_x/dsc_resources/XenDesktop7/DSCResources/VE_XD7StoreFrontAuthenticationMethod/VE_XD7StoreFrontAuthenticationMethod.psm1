Import-LocalizedData -BindingVariable localizedData -FileName VE_XD7StoreFrontAuthenticationMethod.Resources.psd1;

function Get-TargetResource {
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSDSCUseVerboseMessageInDSCResource', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalFunctions', 'global:Write-Host')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingEmptyCatchBlock', '')]
    [OutputType([System.Collections.Hashtable])]
    param (
        ## Citrix Storefront Authentication Service IIS Virtual Path
        [Parameter(Mandatory)]
        [System.String] $VirtualPath,

        ## Explicit authentication methods available
        [Parameter(Mandatory)]
        [ValidateSet('IntegratedWindows','HttpBasic','ExplicitForms','CitrixFederation','CitrixAGBasic','Certificate')]
        [System.String[]] $AuthenticationMethod,

        ## Citrix Storefront Authentication Service IIS Site Id
        [Parameter()]
        [System.UInt16] $SiteId = 1,

        [Parameter()]
        [ValidateSet('Present','Absent')]
        [System.String] $Ensure = 'Present'
    )
    begin {

        AssertXDModule -Name 'AuthenticationModule','UtilsModule' -Path "$env:ProgramFiles\Citrix\Receiver StoreFront\Management";

    }
    process {

        function global:Write-Host {
            [CmdletBinding()]
            param (
                [Parameter(Position = 0, ValueFromPipeline, ValueFromRemainingArguments)]
                [System.Object] $Object,
                [System.Management.Automation.SwitchParameter] $NoNewLine,
                [System.ConsoleColor] $ForegroundColor,
                [System.ConsoleColor] $BackgroundColor
            )
            foreach ($message in $Object) {
                try { Write-Verbose -Message $message }
                catch { }
            }
        }

        $storefrontCmdletSearchPath = "$env:ProgramFiles\Citrix\Receiver StoreFront\Management";
        Import-Module (FindXDModule -Name 'UtilsModule' -Path $storefrontCmdletSearchPath) -Scope Global -Verbose:$false;
        Import-Module (FindXDModule -Name 'AuthenticationModule' -Path $storefrontCmdletSearchPath) -Scope Global -Verbose:$false;

        $authenticationMethods = Get-DSAuthenticationProtocolsDeployed -SiteId $SiteId -VirtualPath $VirtualPath;

        $targetResource = @{
            VirtualPath = $VirtualPath;
            SiteId = $SiteId;
            AuthenticationMethod = $authenticationMethods;
            Ensure = if ($authenticationMethods) { 'Present' } else { 'Absent' }
        }

        return $targetResource;

    } #end process
} #end function Get-TargetResource


function Test-TargetResource {
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param (
        ## Citrix Storefront Authentication Service IIS Virtual Path
        [Parameter(Mandatory)]
        [System.String] $VirtualPath,

        ## Explicit authentication methods available
        [Parameter(Mandatory)]
        [ValidateSet('IntegratedWindows','HttpBasic','ExplicitForms','CitrixFederation','CitrixAGBasic','Certificate')]
        [System.String[]] $AuthenticationMethod,

        ## Citrix Storefront Authentication Service IIS Site Id
        [Parameter()]
        [System.UInt16] $SiteId = 1,

        [Parameter()]
        [ValidateSet('Present','Absent')]
        [System.String] $Ensure = 'Present'
    )
    process {

        $targetResource = Get-TargetResource @PSBoundParameters;

        $inDesiredState = $true;

        foreach ($method in $AuthenticationMethod) {

            if ($Ensure -eq 'Present') {

                if ($targetResource.AuthenticationMethod -notcontains $method) {

                    Write-Verbose -Message ($localizedData.ResourcePropertyMismatch -f 'AuthenticationMethod', $method, '<Null>');
                    $inDesiredState = $false;
                }
            }
            elseif ($Ensure -eq 'Absent') {

                if ($targetResource.AuthenticationMethod -contains $method) {

                    Write-Verbose -Message ($localizedData.ResourcePropertyMismatch -f 'AuthenticationMethod', '<Null>', $method);
                    $inDesiredState = $false;
                }
            }
        }

        if ($inDesiredState) {
            Write-Verbose ($localizedData.ResourceInDesiredState -f $VirtualPath);
            return $true;
        }
        else {
            Write-Verbose ($localizedData.ResourceNotInDesiredState -f $VirtualPath);
            return $false;
        }

    } #end process
} #end function Test-TargetResource


function Set-TargetResource {
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalFunctions', 'global:Write-Host')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingEmptyCatchBlock', '')]
    param (
        ## Citrix Storefront Authentication Service IIS Virtual Path
        [Parameter(Mandatory)]
        [System.String] $VirtualPath,

        ## Explicit authentication methods available
        [Parameter(Mandatory)]
        [ValidateSet('IntegratedWindows','HttpBasic','ExplicitForms','CitrixFederation','CitrixAGBasic','Certificate')]
        [System.String[]] $AuthenticationMethod,

        ## Citrix Storefront Authentication Service IIS Site Id
        [Parameter()]
        [System.UInt16] $SiteId = 1,

        [Parameter()]
        [ValidateSet('Present','Absent')]
        [System.String] $Ensure = 'Present'
    )
    begin {

        AssertXDModule -Name 'AuthenticationModule','UtilsModule' -Path "$env:ProgramFiles\Citrix\Receiver StoreFront\Management";

    }
    process {

        function global:Write-Host {
            [CmdletBinding()]
            param (
                [Parameter(Position = 0, ValueFromPipeline, ValueFromRemainingArguments)]
                [System.Object] $Object,
                [System.Management.Automation.SwitchParameter] $NoNewLine,
                [System.ConsoleColor] $ForegroundColor,
                [System.ConsoleColor] $BackgroundColor
            )
            foreach ($message in $Object) {
                try { Write-Verbose -Message $message }
                catch { }
            }
        }

        $storefrontCmdletSearchPath = "$env:ProgramFiles\Citrix\Receiver StoreFront\Management";
        Import-Module (FindXDModule -Name 'UtilsModule' -Path $storefrontCmdletSearchPath) -Scope Global -Verbose:$false;
        Import-Module (FindXDModule -Name 'AuthenticationModule' -Path $storefrontCmdletSearchPath) -Scope Global -Verbose:$false;

        Write-Verbose ($localizedData.UpdatingAuthenticationService -f $VirtualPath);

        if ($Ensure -eq 'Present') {

            Write-Verbose ($localizedData.AddingAuthenticationMethod -f ($AuthenticationMethod -join ', '));
            [ref] $null = Add-DSAuthenticationProtocolsDeployed -SiteId $SiteId -VirtualPath $VirtualPath -Protocols $AuthenticationMethod;
        }
        elseif ($Ensure -eq 'Absent') {

            Write-Verbose ($localizedData.RemovingAuthenticationMethod -f ($AuthenticationMethod -join ', '));
            [ref] $null = Remove-DSAuthenticationProtocolsDeployed -SiteId $SiteId -VirtualPath $VirtualPath -Protocols $AuthenticationMethod;
        }

    } #end process
} #end function Set-TargetResource


$moduleRoot = Split-Path -Path $MyInvocation.MyCommand.Path -Parent;

## Import the XD7Common library functions
$moduleParent = Split-Path -Path $moduleRoot -Parent;
Import-Module (Join-Path -Path $moduleParent -ChildPath 'VE_XD7Common');

Export-ModuleMember -Function *-TargetResource;
