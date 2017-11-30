require 'pathname'

Puppet::Type.newtype(:dsc_xd7vdafeature) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC XD7VDAFeature resource type.
    Automatically generated from
    'XenDesktop7/DSCResources/VE_XD7VDAFeature/VE_XD7VDAFeature.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_role is a required attribute') if self[:dsc_role].nil?
    end

  def dscmeta_resource_friendly_name; 'XD7VDAFeature' end
  def dscmeta_resource_name; 'VE_XD7VDAFeature' end
  def dscmeta_module_name; 'XenDesktop7' end
  def dscmeta_module_version; '2.5.0' end

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

  # Name:         Role
  # Type:         string
  # IsMandatory:  True
  # Values:       ["DesktopVDA", "SessionVDA"]
  newparam(:dsc_role) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Role - Citrix XenDesktop 7 VDA feature. Valid values are DesktopVDA, SessionVDA."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['DesktopVDA', 'desktopvda', 'SessionVDA', 'sessionvda'].include?(value)
        fail("Invalid value '#{value}'. Valid values are DesktopVDA, SessionVDA")
      end
    end
  end

  # Name:         SourcePath
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sourcepath) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SourcePath - Citrix XenDesktop 7 installation media source path."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
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

  # Name:         InstallReceiver
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_installreceiver) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "InstallReceiver - Install Citrix Receiver."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         EnableRemoteAssistance
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_enableremoteassistance) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "EnableRemoteAssistance - Enable the Microsoft Remote Assistance feature."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         Optimize
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_optimize) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "Optimize - Optimize the VDA installation for a virtual desktop."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         InstallDesktopExperience
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_installdesktopexperience) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "InstallDesktopExperience - Enable the Desktop Experience feature."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         EnableRealTimeTransport
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_enablerealtimetransport) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "EnableRealTimeTransport - Enable UDP Real-time transport feature."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         ExcludeTelemetryService
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_excludetelemetryservice) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "ExcludeTelemetryService - Excludes the Citrix Telemetry Service from the install."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         LogPath
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_logpath) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "LogPath - Installation log path"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_xd7vdafeature).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
