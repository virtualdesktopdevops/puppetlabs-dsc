require 'pathname'

Puppet::Type.newtype(:dsc_xwinrm) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC xWinRM resource type.
    Automatically generated from
    'xWinRM/DSCResources/xWinRM/xWinRM.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_protocol is a required attribute') if self[:dsc_protocol].nil?
    end

  def dscmeta_resource_friendly_name; 'xWinRM' end
  def dscmeta_resource_name; 'xWinRM' end
  def dscmeta_module_name; 'xWinRM' end
  def dscmeta_module_version; '1.0' end

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

  # Name:         Protocol
  # Type:         string
  # IsMandatory:  True
  # Values:       ["HTTP", "HTTPS"]
  newparam(:dsc_protocol) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Protocol - Listener protocol Valid values are HTTP, HTTPS."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['HTTP', 'http', 'HTTPS', 'https'].include?(value)
        fail("Invalid value '#{value}'. Valid values are HTTP, HTTPS")
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
    desc "Ensure - Ensure Valid values are Present, Absent."
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

  # Name:         Service_Basic
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_service_basic) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Service_Basic - Enable or disable basic auth for the WinRM service Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Client_Basic
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_client_basic) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Client_Basic - Enable or disable basic auth for the WinRM client Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Client_Digest
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_client_digest) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Client_Digest - Enable or disable digest auth for the WinRM client Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Service_Kerberos
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_service_kerberos) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Service_Kerberos - Enable or disable kerberos auth for the WinRM service Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Client_Kerberos
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_client_kerberos) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Client_Kerberos - Enable or disable kerberos auth for the WinRM client Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Service_Negotiate
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_service_negotiate) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Service_Negotiate - Enable or disable negotiate auth for the WinRM service Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Client_Negotiate
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_client_negotiate) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Client_Negotiate - Enable or disable negotiate auth for the WinRM client Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Service_Certificate
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_service_certificate) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Service_Certificate - Enable or disable certificate auth for the WinRM service Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Client_Certificate
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_client_certificate) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Client_Certificate - Enable or disable certificate auth for the WinRM client Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Service_CredSSP
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_service_credssp) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Service_CredSSP - Enable or disable credssp auth for the WinRM service Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Client_CredSSP
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_client_credssp) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Client_CredSSP - Enable or disable credssp auth for the WinRM client Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Service_AllowUnencrypted
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_service_allowunencrypted) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Service_AllowUnencrypted - Enable or disable unencrypted WinRM service Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         Client_AllowUnencrypted
  # Type:         string
  # IsMandatory:  False
  # Values:       ["true", "false"]
  newparam(:dsc_client_allowunencrypted) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Client_AllowUnencrypted - Enable or disable unencrypted WinRM client Valid values are true, false."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['true', 'true', 'false', 'false'].include?(value)
        fail("Invalid value '#{value}'. Valid values are true, false")
      end
    end
  end

  # Name:         HttpPort
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_httpport) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "HttpPort - Set the HTTP WinRM port"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         HttpsPort
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_httpsport) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "HttpsPort - Set the HTTPS WinRM port"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         MaxEnvelopeSizekb
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_maxenvelopesizekb) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "MaxEnvelopeSizekb - Set the MaxEnvelopeSizekb value"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         MaxTimeoutms
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_maxtimeoutms) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "MaxTimeoutms - Set the MaxTimeoutms value"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         MaxBatchItems
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_maxbatchitems) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "MaxBatchItems - Set the MaxBatchItems value"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         MaxProviderRequests
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_maxproviderrequests) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "MaxProviderRequests - Set the MaxProviderRequests value"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         MaxMemoryPerShellMB
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_maxmemorypershellmb) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "MaxMemoryPerShellMB - Set the MaxMemoryPerShellMB value"
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         HTTPSCertThumpprint
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_httpscertthumpprint) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "HTTPSCertThumpprint - Enter value of HTTPS certificate thumprint"
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

Puppet::Type.type(:dsc_xwinrm).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
