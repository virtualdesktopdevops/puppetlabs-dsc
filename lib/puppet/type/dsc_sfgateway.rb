require 'pathname'

Puppet::Type.newtype(:dsc_sfgateway) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC SFGateway resource type.
    Automatically generated from
    'Storefront/DSCResources/VE_SFGateway/VE_SFGateway.schema.mof'

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

  def dscmeta_resource_friendly_name; 'SFGateway' end
  def dscmeta_resource_name; 'VE_SFGateway' end
  def dscmeta_module_name; 'Storefront' end
  def dscmeta_module_version; '0.9.4' end

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
    desc "Name - NetScaler gateway display name"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         Url
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_url) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Url - NetScaler gateway Url"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         LogonType
  # Type:         string
  # IsMandatory:  False
  # Values:       ["UsedForHDXOnly", "Domain", "RSA", "DomainAndRSA", "SMS", "GatewayKnows", "SmartCard", "None"]
  newparam(:dsc_logontype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "LogonType - Login type required and supported by the Gateway Valid values are UsedForHDXOnly, Domain, RSA, DomainAndRSA, SMS, GatewayKnows, SmartCard, None."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['UsedForHDXOnly', 'usedforhdxonly', 'Domain', 'domain', 'RSA', 'rsa', 'DomainAndRSA', 'domainandrsa', 'SMS', 'sms', 'GatewayKnows', 'gatewayknows', 'SmartCard', 'smartcard', 'None', 'none'].include?(value)
        fail("Invalid value '#{value}'. Valid values are UsedForHDXOnly, Domain, RSA, DomainAndRSA, SMS, GatewayKnows, SmartCard, None")
      end
    end
  end

  # Name:         SmartCardFallbackLogonType
  # Type:         string
  # IsMandatory:  False
  # Values:       ["UsedForHDXOnly", "Domain", "RSA", "DomainAndRSA", "SMS", "GatewayKnows", "SmartCard", "None"]
  newparam(:dsc_smartcardfallbacklogontype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SmartCardFallbackLogonType - Login type to use when SmartCard fails Valid values are UsedForHDXOnly, Domain, RSA, DomainAndRSA, SMS, GatewayKnows, SmartCard, None."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['UsedForHDXOnly', 'usedforhdxonly', 'Domain', 'domain', 'RSA', 'rsa', 'DomainAndRSA', 'domainandrsa', 'SMS', 'sms', 'GatewayKnows', 'gatewayknows', 'SmartCard', 'smartcard', 'None', 'none'].include?(value)
        fail("Invalid value '#{value}'. Valid values are UsedForHDXOnly, Domain, RSA, DomainAndRSA, SMS, GatewayKnows, SmartCard, None")
      end
    end
  end

  # Name:         CallbackUrl
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_callbackurl) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "CallbackUrl - NetScaler gateway authentication NetScaler call-back Url"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         SessionReliability
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sessionreliability) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "SessionReliability - Enable session reliability"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         RequestTicketTwoSTAs
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_requesttickettwostas) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "RequestTicketTwoSTAs - Request STA tickets from two STA servers (Requires two STA servers)"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         SubnetIPAddress
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_subnetipaddress) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "SubnetIPAddress - IP address"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         SecureTicketAuthorityUrls
  # Type:         string[]
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_secureticketauthorityurls, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "SecureTicketAuthorityUrls - Secure Ticket Authority server Urls"
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         StasUseLoadBalancing
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_stasuseloadbalancing) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "StasUseLoadBalancing - Load balance between the configured STA servers (requires two or more STA servers)"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         StasBypassDuration
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_stasbypassduration) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "StasBypassDuration - Time before retrying a failed STA server (seconds)"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
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

Puppet::Type.type(:dsc_sfgateway).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
