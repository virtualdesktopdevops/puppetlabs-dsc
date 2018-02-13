require 'pathname'

Puppet::Type.newtype(:dsc_sphealthanalyzerrulestate) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC SPHealthAnalyzerRuleState resource type.
    Automatically generated from
    'SharePointDsc/DSCResources/MSFT_SPHealthAnalyzerRuleState/MSFT_SPHealthAnalyzerRuleState.schema.mof'

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

  def dscmeta_resource_friendly_name; 'SPHealthAnalyzerRuleState' end
  def dscmeta_resource_name; 'MSFT_SPHealthAnalyzerRuleState' end
  def dscmeta_module_name; 'SharePointDsc' end
  def dscmeta_module_version; '2.1.0.0' end

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

  # Name:         Name
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_name) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Name - The name of the rule exactly as it appears in central admin"
    isrequired
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
    desc "Enabled - Should the rule be enabled?"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         RuleScope
  # Type:         string
  # IsMandatory:  False
  # Values:       ["All Servers", "Any Server"]
  newparam(:dsc_rulescope) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "RuleScope - What is the scope of this rule Valid values are All Servers, Any Server."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['All Servers', 'all servers', 'Any Server', 'any server'].include?(value)
        fail("Invalid value '#{value}'. Valid values are All Servers, Any Server")
      end
    end
  end

  # Name:         Schedule
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Hourly", "Daily", "Weekly", "Monthly", "OnDemandOnly"]
  newparam(:dsc_schedule) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Schedule - How often should the rule check Valid values are Hourly, Daily, Weekly, Monthly, OnDemandOnly."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Hourly', 'hourly', 'Daily', 'daily', 'Weekly', 'weekly', 'Monthly', 'monthly', 'OnDemandOnly', 'ondemandonly'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Hourly, Daily, Weekly, Monthly, OnDemandOnly")
      end
    end
  end

  # Name:         FixAutomatically
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_fixautomatically) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "FixAutomatically - Should the rule fix itself automatically"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         InstallAccount
  # Type:         MSFT_Credential
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_installaccount) do
    def mof_type; 'MSFT_Credential' end
    def mof_is_embedded?; true end
    desc "InstallAccount - POWERSHELL 4 ONLY: The account to run this resource as, use PsDscRunAsCredential if using PowerShell 5"
    validate do |value|
      unless value.kind_of?(Hash)
        fail("Invalid value '#{value}'. Should be a hash")
      end
      PuppetX::Dsc::TypeHelpers.validate_MSFT_Credential("InstallAccount", value)
    end
  end


  def builddepends
    pending_relations = super()
    PuppetX::Dsc::TypeHelpers.ensure_reboot_relationship(self, pending_relations)
  end
end

Puppet::Type.type(:dsc_sphealthanalyzerrulestate).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
