require 'pathname'

Puppet::Type.newtype(:dsc_xexchwebservicesvirtualdirectory) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC xExchWebServicesVirtualDirectory resource type.
    Automatically generated from
    'xExchange/DSCResources/MSFT_xExchWebServicesVirtualDirectory/MSFT_xExchWebServicesVirtualDirectory.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_identity is a required attribute') if self[:dsc_identity].nil?
    end

  def dscmeta_resource_friendly_name; 'xExchWebServicesVirtualDirectory' end
  def dscmeta_resource_name; 'MSFT_xExchWebServicesVirtualDirectory' end
  def dscmeta_module_name; 'xExchange' end
  def dscmeta_module_version; '1.19.0.0' end

  newparam(:name, :namevar => true ) do
  end

  ensurable do
    newvalue(:exists?) { provider.exists? }
    newvalue(:present) { provider.create }
    defaultto { :present }
  end

  # Name:         PsDscRunAsCredential
  # Type:         MSFT_Credential
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_psdscrunascredential) do
    def mof_type; 'MSFT_Credential' end
    def mof_is_embedded?; true end
    desc "PsDscRunAsCredential"
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("Credential", value)
    end
  end

  # Name:         Identity
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_identity) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Identity"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         Credential
  # Type:         MSFT_Credential
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_credential) do
    def mof_type; 'MSFT_Credential' end
    def mof_is_embedded?; true end
    desc "Credential"
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("Credential", value)
    end
  end

  # Name:         AllowServiceRestart
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_allowservicerestart) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "AllowServiceRestart"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         BasicAuthentication
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_basicauthentication) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "BasicAuthentication"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         CertificateAuthentication
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_certificateauthentication) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "CertificateAuthentication"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         DigestAuthentication
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_digestauthentication) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "DigestAuthentication"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         DomainController
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_domaincontroller) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DomainController"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         ExtendedProtectionFlags
  # Type:         string[]
  # IsMandatory:  False
  # Values:       ["None", "Proxy", "NoServiceNameCheck", "AllowDotlessSpn", "ProxyCohosting"]
  newparam(:dsc_extendedprotectionflags, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "ExtendedProtectionFlags - Valid values are None, Proxy, NoServiceNameCheck, AllowDotlessSpn, ProxyCohosting."
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
      if value.kind_of?(Array)
        unless (['None', 'none', 'Proxy', 'proxy', 'NoServiceNameCheck', 'noservicenamecheck', 'AllowDotlessSpn', 'allowdotlessspn', 'ProxyCohosting', 'proxycohosting'] & value).count == value.count
          fail("Invalid value #{value}. Valid values are None, Proxy, NoServiceNameCheck, AllowDotlessSpn, ProxyCohosting")
        end
      end
      if value.kind_of?(String)
        unless ['None', 'none', 'Proxy', 'proxy', 'NoServiceNameCheck', 'noservicenamecheck', 'AllowDotlessSpn', 'allowdotlessspn', 'ProxyCohosting', 'proxycohosting'].include?(value)
          fail("Invalid value #{value}. Valid values are None, Proxy, NoServiceNameCheck, AllowDotlessSpn, ProxyCohosting")
        end
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         ExtendedProtectionSPNList
  # Type:         string[]
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_extendedprotectionspnlist, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "ExtendedProtectionSPNList"
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         ExtendedProtectionTokenChecking
  # Type:         string
  # IsMandatory:  False
  # Values:       ["None", "Allow", "Require"]
  newparam(:dsc_extendedprotectiontokenchecking) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "ExtendedProtectionTokenChecking - Valid values are None, Allow, Require."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['None', 'none', 'Allow', 'allow', 'Require', 'require'].include?(value)
        fail("Invalid value '#{value}'. Valid values are None, Allow, Require")
      end
    end
  end

  # Name:         ExternalUrl
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_externalurl) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "ExternalUrl"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         GzipLevel
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Off", "Low", "High", "Error"]
  newparam(:dsc_gziplevel) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "GzipLevel - Valid values are Off, Low, High, Error."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Off', 'off', 'Low', 'low', 'High', 'high', 'Error', 'error'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Off, Low, High, Error")
      end
    end
  end

  # Name:         InternalNLBBypassUrl
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_internalnlbbypassurl) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "InternalNLBBypassUrl"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         InternalUrl
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_internalurl) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "InternalUrl"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         MRSProxyEnabled
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_mrsproxyenabled) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "MRSProxyEnabled"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         OAuthAuthentication
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_oauthauthentication) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "OAuthAuthentication"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         WindowsAuthentication
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_windowsauthentication) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "WindowsAuthentication"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         WSSecurityAuthentication
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_wssecurityauthentication) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "WSSecurityAuthentication"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_xexchwebservicesvirtualdirectory).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
