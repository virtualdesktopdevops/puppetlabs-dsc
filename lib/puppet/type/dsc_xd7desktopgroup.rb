require 'pathname'

Puppet::Type.newtype(:dsc_xd7desktopgroup) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC XD7DesktopGroup resource type.
    Automatically generated from
    'XenDesktop7/DSCResources/VE_XD7DesktopGroup/VE_XD7DesktopGroup.schema.mof'

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

  def dscmeta_resource_friendly_name; 'XD7DesktopGroup' end
  def dscmeta_resource_name; 'VE_XD7DesktopGroup' end
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

  # Name:         Name
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_name) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Name - Citrix XenDesktop 7 desktop group name."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
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
    desc "IsMultiSession - Citrix XenDesktop 7 desktop group is multi-session."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         DeliveryType
  # Type:         string
  # IsMandatory:  False
  # Values:       ["AppsOnly", "DesktopsOnly", "DesktopsAndApps"]
  newparam(:dsc_deliverytype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DeliveryType - Citrix XenDesktop 7 desktop group delivery type. Valid values are AppsOnly, DesktopsOnly, DesktopsAndApps."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['AppsOnly', 'appsonly', 'DesktopsOnly', 'desktopsonly', 'DesktopsAndApps', 'desktopsandapps'].include?(value)
        fail("Invalid value '#{value}'. Valid values are AppsOnly, DesktopsOnly, DesktopsAndApps")
      end
    end
  end

  # Name:         DesktopType
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Shared", "Private"]
  newparam(:dsc_desktoptype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DesktopType - Citrix XenDesktop 7 desktop group desktop type. Valid values are Shared, Private."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Shared', 'shared', 'Private', 'private'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Shared, Private")
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
    desc "Description - Citrix XenDesktop 7 desktop group description."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         DisplayName
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_displayname) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DisplayName - Citrix XenDesktop 7 desktop group display name."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
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
    desc "Enabled - Citrix XenDesktop 7 desktop group is enabled."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         ColorDepth
  # Type:         string
  # IsMandatory:  False
  # Values:       ["FourBit", "EightBit", "SixteenBit", "TwentyFourBit"]
  newparam(:dsc_colordepth) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "ColorDepth - Citrix XenDesktop 7 desktop group color depth. Valid values are FourBit, EightBit, SixteenBit, TwentyFourBit."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['FourBit', 'fourbit', 'EightBit', 'eightbit', 'SixteenBit', 'sixteenbit', 'TwentyFourBit', 'twentyfourbit'].include?(value)
        fail("Invalid value '#{value}'. Valid values are FourBit, EightBit, SixteenBit, TwentyFourBit")
      end
    end
  end

  # Name:         IsMaintenanceMode
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_ismaintenancemode) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "IsMaintenanceMode - Citrix XenDesktop 7 desktop group is in maintenance mode."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         IsRemotePC
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_isremotepc) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "IsRemotePC - Citrix XenDesktop 7 desktop group is Remote PC."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         IsSecureIca
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_issecureica) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "IsSecureIca - Citrix XenDesktop 7 desktop group uses Secure ICA."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         ShutdownDesktopsAfterUse
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_shutdowndesktopsafteruse) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "ShutdownDesktopsAfterUse - Citrix XenDesktop 7 desktop group shuts down desktops after use."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         TurnOnAddedMachine
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_turnonaddedmachine) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "TurnOnAddedMachine - Citrix XenDesktop 7 desktop group powers new machines added to the group."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         Credential
  # Type:         MSFT_Credential
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_credential) do
    def mof_type; 'MSFT_Credential' end
    def mof_is_embedded?; true end
    desc "Credential - Specifies a user account that has permission to create the delivery group."
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

Puppet::Type.type(:dsc_xd7desktopgroup).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
