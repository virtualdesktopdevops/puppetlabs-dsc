require 'pathname'

Puppet::Type.newtype(:dsc_sppasswordchangesettings) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC SPPasswordChangeSettings resource type.
    Automatically generated from
    'SharePointDsc/DSCResources/MSFT_SPPasswordChangeSettings/MSFT_SPPasswordChangeSettings.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_mailaddress is a required attribute') if self[:dsc_mailaddress].nil?
    end

  def dscmeta_resource_friendly_name; 'SPPasswordChangeSettings' end
  def dscmeta_resource_name; 'MSFT_SPPasswordChangeSettings' end
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

  # Name:         MailAddress
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_mailaddress) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "MailAddress - The email address to send notifications of password changes to"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         DaysBeforeExpiry
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_daysbeforeexpiry) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "DaysBeforeExpiry - The number of days before password expiry to send send emails"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         PasswordChangeWaitTimeSeconds
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_passwordchangewaittimeseconds) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "PasswordChangeWaitTimeSeconds - The duration that a password reset will wait for before it times out"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         NumberOfRetries
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_numberofretries) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "NumberOfRetries - How many retries if the password change fails"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
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

Puppet::Type.type(:dsc_sppasswordchangesettings).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
