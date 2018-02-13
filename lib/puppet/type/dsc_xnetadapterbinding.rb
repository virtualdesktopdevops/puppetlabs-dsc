require 'pathname'

Puppet::Type.newtype(:dsc_xnetadapterbinding) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC xNetAdapterBinding resource type.
    Automatically generated from
    'xNetworking/DSCResources/MSFT_xNetAdapterBinding/MSFT_xNetAdapterBinding.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_interfacealias is a required attribute') if self[:dsc_interfacealias].nil?
      fail('dsc_componentid is a required attribute') if self[:dsc_componentid].nil?
    end

  def dscmeta_resource_friendly_name; 'xNetAdapterBinding' end
  def dscmeta_resource_name; 'MSFT_xNetAdapterBinding' end
  def dscmeta_module_name; 'xNetworking' end
  def dscmeta_module_version; '5.5.0.0' end

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

  # Name:         InterfaceAlias
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_interfacealias) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "InterfaceAlias - Specifies the alias of a network interface. Supports the use of '*'."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         ComponentId
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_componentid) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "ComponentId - Specifies the underlying name of the transport or filter in the following form - ms_xxxx, such as ms_tcpip."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         State
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enabled", "Disabled"]
  newparam(:dsc_state) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "State - Specifies if the component ID for the Interface should be Enabled or Disabled. Valid values are Enabled, Disabled."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enabled', 'enabled', 'Disabled', 'disabled'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enabled, Disabled")
      end
    end
  end

  # Name:         CurrentState
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enabled", "Disabled", "Mixed"]
  newparam(:dsc_currentstate) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "CurrentState - Returns the current state of the component ID for the Interfaces. Valid values are Enabled, Disabled, Mixed."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enabled', 'enabled', 'Disabled', 'disabled', 'Mixed', 'mixed'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enabled, Disabled, Mixed")
      end
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_xnetadapterbinding).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
