require 'pathname'

Puppet::Type.newtype(:dsc_sfstoreregistergateway) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC SFStoreRegisterGateway resource type.
    Automatically generated from
    'Storefront/DSCResources/VE_SFStoreRegisterGateway/VE_SFStoreRegisterGateway.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_storevirtualpath is a required attribute') if self[:dsc_storevirtualpath].nil?
    end

  def dscmeta_resource_friendly_name; 'SFStoreRegisterGateway' end
  def dscmeta_resource_name; 'VE_SFStoreRegisterGateway' end
  def dscmeta_module_name; 'Storefront' end
  def dscmeta_module_version; '0.9.6' end

  newparam(:name, :namevar => true ) do
  end

  ensurable do
    newvalue(:exists?) { provider.exists? }
    newvalue(:present) { provider.create }
    newvalue(:absent)  { provider.destroy }
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

  # Name:         StoreVirtualPath
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_storevirtualpath) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "StoreVirtualPath - Citrix Storefront Authentication Service IIS Virtual Path"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         SiteId
  # Type:         uint16
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_siteid) do
    def mof_type; 'uint16' end
    def mof_is_embedded?; false end
    desc "SiteId - Citrix Storefront Authentication Service IIS Site Id"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         Gateway
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_gateway) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Gateway - Citrix Storefront Netscaler Gateway"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         DefaultGateway
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_defaultgateway) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "DefaultGateway - Use this Gateway as the default if more than one is associated to the Citrix Storefront Store"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         UseFullVpn
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_usefullvpn) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "UseFullVpn - Use full VPN access when accessing the Citrix Storefront Store through this Gateway"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         Ensure
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Present", "Absent"]
  newparam(:dsc_ensure) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Ensure - Valid values are Present, Absent."
    validate do |value|
      resource[:ensure] = value.downcase
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Present', 'present', 'Absent', 'absent'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Present, Absent")
      end
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_sfstoreregistergateway).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
