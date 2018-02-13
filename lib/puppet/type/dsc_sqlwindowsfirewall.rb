require 'pathname'

Puppet::Type.newtype(:dsc_sqlwindowsfirewall) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC SqlWindowsFirewall resource type.
    Automatically generated from
    'SqlServerDsc/DSCResources/MSFT_SqlWindowsFirewall/MSFT_SqlWindowsFirewall.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_features is a required attribute') if self[:dsc_features].nil?
      fail('dsc_instancename is a required attribute') if self[:dsc_instancename].nil?
    end

  def dscmeta_resource_friendly_name; 'SqlWindowsFirewall' end
  def dscmeta_resource_name; 'MSFT_SqlWindowsFirewall' end
  def dscmeta_module_name; 'SqlServerDsc' end
  def dscmeta_module_version; '11.0.0.0' end

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

  # Name:         Ensure
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Present", "Absent"]
  newparam(:dsc_ensure) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Ensure - An enumerated value that describes if the SQL firewall rules are is expected to be enabled on the machine.\nPresent {default}  \nAbsent   \n Valid values are Present, Absent."
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

  # Name:         SourcePath
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sourcepath) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SourcePath - UNC path to the root of the source files for installation."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         Features
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_features) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Features - SQL features to enable firewall rules for."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         InstanceName
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_instancename) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "InstanceName - SQL instance to enable firewall rules for."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         DatabaseEngineFirewall
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_databaseenginefirewall) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "DatabaseEngineFirewall - Is the firewall rule for the Database Engine enabled?"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         BrowserFirewall
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_browserfirewall) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "BrowserFirewall - Is the firewall rule for the Browser enabled?"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         ReportingServicesFirewall
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_reportingservicesfirewall) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "ReportingServicesFirewall - Is the firewall rule for Reporting Services enabled?"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         AnalysisServicesFirewall
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_analysisservicesfirewall) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "AnalysisServicesFirewall - Is the firewall rule for Analysis Services enabled?"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         IntegrationServicesFirewall
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_integrationservicesfirewall) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "IntegrationServicesFirewall - Is the firewall rule for the Integration Services enabled?"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         SourceCredential
  # Type:         MSFT_Credential
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sourcecredential) do
    def mof_type; 'MSFT_Credential' end
    def mof_is_embedded?; true end
    desc "SourceCredential - Credentials used to access the path set in the parameter 'SourcePath'."
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("SourceCredential", value)
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_sqlwindowsfirewall).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
