require 'pathname'

Puppet::Type.newtype(:dsc_xd7waitforsite) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC XD7WaitForSite resource type.
    Automatically generated from
    'XenDesktop7/DSCResources/VE_XD7WaitForSite/VE_XD7WaitForSite.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_existingcontrollername is a required attribute') if self[:dsc_existingcontrollername].nil?
    end

  def dscmeta_resource_friendly_name; 'XD7WaitForSite' end
  def dscmeta_resource_name; 'VE_XD7WaitForSite' end
  def dscmeta_module_name; 'XenDesktop7' end
  def dscmeta_module_version; '2.5.10' end

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

  # Name:         SiteName
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sitename) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SiteName - Citrix XenDesktop 7 site name."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         ExistingControllerName
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_existingcontrollername) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "ExistingControllerName - Citrix XenDesktop 7 site controller."
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
    desc "Credential - User account that has permission to connect to the site."
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("Credential", value)
    end
  end

  # Name:         RetryIntervalSec
  # Type:         uint64
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_retryintervalsec) do
    def mof_type; 'uint64' end
    def mof_is_embedded?; false end
    desc "RetryIntervalSec - Interval between retries in seconds."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         RetryCount
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_retrycount) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "RetryCount - Retry count before timing out."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_xd7waitforsite).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
