require 'pathname'

Puppet::Type.newtype(:dsc_xd7accesspolicy) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC XD7AccessPolicy resource type.
    Automatically generated from
    'XenDesktop7/DSCResources/VE_XD7AccessPolicy/VE_XD7AccessPolicy.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_deliverygroup is a required attribute') if self[:dsc_deliverygroup].nil?
      fail('dsc_accesstype is a required attribute') if self[:dsc_accesstype].nil?
    end

  def dscmeta_resource_friendly_name; 'XD7AccessPolicy' end
  def dscmeta_resource_name; 'VE_XD7AccessPolicy' end
  def dscmeta_module_name; 'XenDesktop7' end
  def dscmeta_module_version; '2.5.10' end

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

  # Name:         DeliveryGroup
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_deliverygroup) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DeliveryGroup - Citrix XenDesktop 7 delivery group name."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         AccessType
  # Type:         string
  # IsMandatory:  True
  # Values:       ["AccessGateway", "Direct"]
  newparam(:dsc_accesstype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "AccessType - Citrix XenDesktop 7 access policy type. Valid values are AccessGateway, Direct."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['AccessGateway', 'accessgateway', 'Direct', 'direct'].include?(value)
        fail("Invalid value '#{value}'. Valid values are AccessGateway, Direct")
      end
    end
  end

  # Name:         Enabled
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_enabled) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "Enabled - Citrix XenDesktop 7 access policy is enabled."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         AllowRestart
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_allowrestart) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "AllowRestart - Citrix XenDesktop 7 access policy allow restart."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         Name
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_name) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Name - Citrix XenDesktop 7 access policy name."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         Description
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_description) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Description - Citrix XenDesktop 7 access policy description."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         Protocol
  # Type:         string[]
  # IsMandatory:  False
  # Values:       ["HDX", "RDP"]
  newparam(:dsc_protocol, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "Protocol - Citrix XenDesktop 7 access policy permitted protocols. Valid values are HDX, RDP."
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
      if value.kind_of?(Array)
        unless (['HDX', 'hdx', 'RDP', 'rdp'] & value).count == value.count
          fail("Invalid value #{value}. Valid values are HDX, RDP")
        end
      end
      if value.kind_of?(String)
        unless ['HDX', 'hdx', 'RDP', 'rdp'].include?(value)
          fail("Invalid value #{value}. Valid values are HDX, RDP")
        end
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         IncludeUsers
  # Type:         string[]
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_includeusers, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "IncludeUsers - Citrix XenDesktop 7 access policy included users."
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         ExcludeUsers
  # Type:         string[]
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_excludeusers, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "ExcludeUsers - Citrix XenDesktop 7 access policy excluded users."
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         Credential
  # Type:         MSFT_Credential
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_credential) do
    def mof_type; 'MSFT_Credential' end
    def mof_is_embedded?; true end
    desc "Credential - Specifies a user account that has permission to install the role."
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("Credential", value)
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

Puppet::Type.type(:dsc_xd7accesspolicy).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
