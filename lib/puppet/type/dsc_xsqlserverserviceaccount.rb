require 'pathname'

Puppet::Type.newtype(:dsc_xsqlserverserviceaccount) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC xSQLServerServiceAccount resource type.
    Automatically generated from
    'xSQLServer/DSCResources/MSFT_xSQLServerServiceAccount/MSFT_xSQLServerServiceAccount.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_sqlserver is a required attribute') if self[:dsc_sqlserver].nil?
      fail('dsc_sqlinstancename is a required attribute') if self[:dsc_sqlinstancename].nil?
      fail('dsc_servicetype is a required attribute') if self[:dsc_servicetype].nil?
    end

  def dscmeta_resource_friendly_name; 'xSQLServerServiceAccount' end
  def dscmeta_resource_name; 'MSFT_xSQLServerServiceAccount' end
  def dscmeta_module_name; 'xSQLServer' end
  def dscmeta_module_version; '8.2.0.0' end

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

  # Name:         SQLServer
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_sqlserver) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SQLServer - Hostname of the SQL Server."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         SQLInstanceName
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_sqlinstancename) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SQLInstanceName - Name of the SQL instance."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         ServiceType
  # Type:         string
  # IsMandatory:  True
  # Values:       ["DatabaseEngine", "SQLServerAgent", "Search", "IntegrationServices", "AnalysisServices", "ReportingServices", "SQLServerBrowser", "NotificationServices"]
  newparam(:dsc_servicetype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "ServiceType - Type of service being managed. Valid values are DatabaseEngine, SQLServerAgent, Search, IntegrationServices, AnalysisServices, ReportingServices, SQLServerBrowser, NotificationServices."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['DatabaseEngine', 'databaseengine', 'SQLServerAgent', 'sqlserveragent', 'Search', 'search', 'IntegrationServices', 'integrationservices', 'AnalysisServices', 'analysisservices', 'ReportingServices', 'reportingservices', 'SQLServerBrowser', 'sqlserverbrowser', 'NotificationServices', 'notificationservices'].include?(value)
        fail("Invalid value '#{value}'. Valid values are DatabaseEngine, SQLServerAgent, Search, IntegrationServices, AnalysisServices, ReportingServices, SQLServerBrowser, NotificationServices")
      end
    end
  end

  # Name:         ServiceAccount
  # Type:         MSFT_Credential
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_serviceaccount) do
    def mof_type; 'MSFT_Credential' end
    def mof_is_embedded?; true end
    desc "ServiceAccount - The service account that should be used when running the service."
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("ServiceAccount", value)
    end
  end

  # Name:         RestartService
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_restartservice) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "RestartService - Determines whether the service is automatically restarted."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         Force
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_force) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "Force - Forces the service account to be updated. Useful for password changes."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_xsqlserverserviceaccount).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
