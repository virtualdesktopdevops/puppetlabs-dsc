require 'pathname'

Puppet::Type.newtype(:dsc_xd7sitelicense) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC XD7SiteLicense resource type.
    Automatically generated from
    'XenDesktop7/DSCResources/VE_XD7SiteLicense/VE_XD7SiteLicense.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_licenseserver is a required attribute') if self[:dsc_licenseserver].nil?
    end

  def dscmeta_resource_friendly_name; 'XD7SiteLicense' end
  def dscmeta_resource_name; 'VE_XD7SiteLicense' end
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

  # Name:         LicenseServer
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_licenseserver) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "LicenseServer - Citrix XenDesktop 7 site licensing server name."
    isrequired
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

  # Name:         LicenseServerPort
  # Type:         uint16
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_licenseserverport) do
    def mof_type; 'uint16' end
    def mof_is_embedded?; false end
    desc "LicenseServerPort - Citrix XenDesktop 7 site licensing server port."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         LicenseEdition
  # Type:         string
  # IsMandatory:  False
  # Values:       ["PLT", "ENT", "ADV"]
  newparam(:dsc_licenseedition) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "LicenseEdition - Citrix XenDesktop 7 site licensing edition. Valid values are PLT, ENT, ADV."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['PLT', 'plt', 'ENT', 'ent', 'ADV', 'adv'].include?(value)
        fail("Invalid value '#{value}'. Valid values are PLT, ENT, ADV")
      end
    end
  end

  # Name:         LicenseModel
  # Type:         string
  # IsMandatory:  False
  # Values:       ["UserDevice", "Concurrent"]
  newparam(:dsc_licensemodel) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "LicenseModel - Citrix XenDesktop 7 site licensing model. Valid values are UserDevice, Concurrent."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['UserDevice', 'userdevice', 'Concurrent', 'concurrent'].include?(value)
        fail("Invalid value '#{value}'. Valid values are UserDevice, Concurrent")
      end
    end
  end

  # Name:         TrustLicenseServerCertificate
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_trustlicenseservercertificate) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "TrustLicenseServerCertificate - Add the Citrix XenDesktop 7 site licensing server certificate hash."
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
    desc "Credential - Specifies a user account that has permission to install the role."
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("Credential", value)
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_xd7sitelicense).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
