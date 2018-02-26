require 'pathname'

Puppet::Type.newtype(:dsc_wembrokerconfig) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC WemBrokerConfig resource type.
    Automatically generated from
    'CitrixWemDsc/DSCResources/VDD_WemBrokerConfig/VDD_WemBrokerConfig.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_databasename is a required attribute') if self[:dsc_databasename].nil?
    end

  def dscmeta_resource_friendly_name; 'WemBrokerConfig' end
  def dscmeta_resource_name; 'VDD_WemBrokerConfig' end
  def dscmeta_module_name; 'CitrixWemDsc' end
  def dscmeta_module_version; '0.1.0' end

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

  # Name:         DatabaseName
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_databasename) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DatabaseName - Citrix WEM database name."
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
    desc "DatabaseServer - MS SQL Server hostname hosting the WEM database"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         SetSqlUserSpecificPassword
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enable", "Disable"]
  newparam(:dsc_setsqluserspecificpassword) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SetSqlUserSpecificPassword - Use vuemUser SQL user account password Valid values are Enable, Disable."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enable', 'enable', 'Disable', 'disable'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enable, Disable")
      end
    end
  end

  # Name:         SqlUserSpecificPassword
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sqluserspecificpassword) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SqlUserSpecificPassword - vuemUser SQL user account password."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         EnableInfrastructureServiceAccountCredential
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enable", "Disable"]
  newparam(:dsc_enableinfrastructureserviceaccountcredential) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "EnableInfrastructureServiceAccountCredential - Use Windows authentication for infrastructure service database connection. Valid values are Enable, Disable."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enable', 'enable', 'Disable', 'disable'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enable, Disable")
      end
    end
  end

  # Name:         InfrastructureServiceAccountCredential
  # Type:         MSFT_Credential
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_infrastructureserviceaccountcredential) do
    def mof_type; 'MSFT_Credential' end
    def mof_is_embedded?; true end
    desc "InfrastructureServiceAccountCredential - PSCredential for running the infrastructure service."
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("InfrastructureServiceAccountCredential", value)
    end
  end

  # Name:         UseCacheEvenIfOnline
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enable", "Disable"]
  newparam(:dsc_usecacheevenifonline) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "UseCacheEvenIfOnline - Enable infrastructure service to always reading site settings from its cache. Valid values are Enable, Disable."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enable', 'enable', 'Disable', 'disable'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enable, Disable")
      end
    end
  end

  # Name:         DebugMode
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enable", "Disable"]
  newparam(:dsc_debugmode) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DebugMode - Enable Citrix WEM debug mode Valid values are Enable, Disable."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enable', 'enable', 'Disable', 'disable'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enable, Disable")
      end
    end
  end

  # Name:         SendGoogleAnalytics
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enable", "Disable"]
  newparam(:dsc_sendgoogleanalytics) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SendGoogleAnalytics - Enable collection of statistics. Valid values are Enable, Disable."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enable', 'enable', 'Disable', 'disable'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enable, Disable")
      end
    end
  end

  # Name:         AdminServicePort
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_adminserviceport) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "AdminServicePort - Administration port for administration console to connect to the infrastructure service."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         AgentServicePort
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_agentserviceport) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "AgentServicePort - Agent service port for agent to connect to the infrastructure server."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         AgentSyncPort
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_agentsyncport) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "AgentSyncPort - Cache synchronization port for agent cache synchronization process to connect to the infrastructure service."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         MonitoringPort
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_monitoringport) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "MonitoringPort - Citrix WEM monitoring port."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         CacheRefreshDelay
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_cacherefreshdelay) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "CacheRefreshDelay - Time (in minutes) before the infrastructure service refreshes its cache."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         SQLCheckDelay
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sqlcheckdelay) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "SQLCheckDelay - Time (in seconds) between each infrastructure service attempt to poll the SQL server."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         InfrastructureServiceSQLConnectionTimeout
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_infrastructureservicesqlconnectiontimeout) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "InfrastructureServiceSQLConnectionTimeout - Time (in seconds) which the infrastructure service waits when trying to establish a connection with the SQL server."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         EnableScheduledMaintenance
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enable", "Disable"]
  newparam(:dsc_enablescheduledmaintenance) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "EnableScheduledMaintenance - Enable deletion of old statistics records from the database at periodic intervals. Valid values are Enable, Disable."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enable', 'enable', 'Disable', 'disable'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enable, Disable")
      end
    end
  end

  # Name:         StatisticsRetentionPeriod
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_statisticsretentionperiod) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "StatisticsRetentionPeriod - Retention period for user and agent statistics (in days)."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         SystemMonitoringRetentionPeriod
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_systemmonitoringretentionperiod) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "SystemMonitoringRetentionPeriod - Retention period for system optimization statistics (in days)."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         AgentRegistrationsRetentionPeriod
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_agentregistrationsretentionperiod) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "AgentRegistrationsRetentionPeriod - Retention period for agent registration logs (in days)."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         DatabaseMaintenanceExecutionTime
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_databasemaintenanceexecutiontime) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DatabaseMaintenanceExecutionTime - The time at which the database maintenance action is performed (HH:MM)."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         GlobalLicenseServerOverride
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Enable", "Disable"]
  newparam(:dsc_globallicenseserveroverride) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "GlobalLicenseServerOverride - Override any Citrix License Server information already in the WEM database. Valid values are Enable, Disable."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Enable', 'enable', 'Disable', 'disable'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Enable, Disable")
      end
    end
  end

  # Name:         LicenseServerName
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_licenseservername) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "LicenseServerName - Citrix License Server name."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         LicenseServerPort
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_licenseserverport) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "LicenseServerPort - Citrix License Server port."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_wembrokerconfig).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
