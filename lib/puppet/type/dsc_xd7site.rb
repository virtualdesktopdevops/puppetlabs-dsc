require 'pathname'

Puppet::Type.newtype(:dsc_xd7site) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC XD7Site resource type.
    Automatically generated from
    'XenDesktop7/DSCResources/VE_XD7Site/VE_XD7Site.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_sitename is a required attribute') if self[:dsc_sitename].nil?
    end

  def dscmeta_resource_friendly_name; 'XD7Site' end
  def dscmeta_resource_name; 'VE_XD7Site' end
  def dscmeta_module_name; 'XenDesktop7' end
  def dscmeta_module_version; '2.5.9' end

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
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_sitename) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SiteName - Citrix XenDesktop 7 site name."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         DatabaseServer
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_databaseserver) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DatabaseServer - MS SQL Server hostname/instance name hosting the XenDesktop 7 database."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         SiteDatabaseName
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sitedatabasename) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SiteDatabaseName - Citrix XenDesktop 7 site database name."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         LoggingDatabaseName
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_loggingdatabasename) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "LoggingDatabaseName - Citrix XenDesktop 7 logging database name."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         MonitorDatabaseName
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_monitordatabasename) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "MonitorDatabaseName - Citrix XenDesktop 7 monitor database name."
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
    desc "Credential - Specifies a user account that has permission to create the site."
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

Puppet::Type.type(:dsc_xd7site).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
