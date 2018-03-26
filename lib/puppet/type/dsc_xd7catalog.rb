require 'pathname'

Puppet::Type.newtype(:dsc_xd7catalog) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC XD7Catalog resource type.
    Automatically generated from
    'XenDesktop7/DSCResources/VE_XD7Catalog/VE_XD7Catalog.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_name is a required attribute') if self[:dsc_name].nil?
    end

  def dscmeta_resource_friendly_name; 'XD7Catalog' end
  def dscmeta_resource_name; 'VE_XD7Catalog' end
  def dscmeta_module_name; 'XenDesktop7' end
  def dscmeta_module_version; '2.5.9' end

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

  # Name:         Name
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_name) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Name - Citrix XenDesktop 7 machine catalog name."
    isrequired
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
    desc "Description - Citrix XenDesktop 7 machine catalog description"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         Allocation
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Permanent", "Random", "Static"]
  newparam(:dsc_allocation) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Allocation - Citrix XenDesktop 7 machine catalog allocation type. Valid values are Permanent, Random, Static."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Permanent', 'permanent', 'Random', 'random', 'Static', 'static'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Permanent, Random, Static")
      end
    end
  end

  # Name:         Provisioning
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Manual", "PVS", "MCS"]
  newparam(:dsc_provisioning) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Provisioning - Citrix XenDesktop 7 machine catalog provisioning type. Valid values are Manual, PVS, MCS."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Manual', 'manual', 'PVS', 'pvs', 'MCS', 'mcs'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Manual, PVS, MCS")
      end
    end
  end

  # Name:         Persistence
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Discard", "Local", "PVD"]
  newparam(:dsc_persistence) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Persistence - Citrix XenDesktop 7 machine catalog persistence type. Valid values are Discard, Local, PVD."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Discard', 'discard', 'Local', 'local', 'PVD', 'pvd'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Discard, Local, PVD")
      end
    end
  end

  # Name:         IsMultiSession
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_ismultisession) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "IsMultiSession - Citrix XenDesktop 7 machine catalog is multi-session."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         PvsAddress
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_pvsaddress) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "PvsAddress - Citrix XenDesktop 7 machine catalog PVS address"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         PvsDomain
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_pvsdomain) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "PvsDomain - Citrix XenDesktop 7 machine catalog PVS domain"
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
    desc "Credential - Specifies a user account that has permission to install the feature."
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

Puppet::Type.type(:dsc_xd7catalog).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
