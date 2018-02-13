require 'pathname'

Puppet::Type.newtype(:dsc_sfstorefarm) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC SFStoreFarm resource type.
    Automatically generated from
    'Storefront/DSCResources/VE_SFStoreFarm/VE_SFStoreFarm.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_storevirtualpath is a required attribute') if self[:dsc_storevirtualpath].nil?
      fail('dsc_farmname is a required attribute') if self[:dsc_farmname].nil?
    end

  def dscmeta_resource_friendly_name; 'SFStoreFarm' end
  def dscmeta_resource_name; 'VE_SFStoreFarm' end
  def dscmeta_module_name; 'Storefront' end
  def dscmeta_module_version; '0.9.6' end

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

  # Name:         StoreVirtualPath
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_storevirtualpath) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "StoreVirtualPath - Storefront Store virtual path"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         FarmName
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_farmname) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "FarmName - Farm display name"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         FarmType
  # Type:         string
  # IsMandatory:  False
  # Values:       ["XenApp", "XenDesktop", "AppController", "VDIinaBox"]
  newparam(:dsc_farmtype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "FarmType - The hostnames or IP addresses of the xml services Valid values are XenApp, XenDesktop, AppController, VDIinaBox."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['XenApp', 'xenapp', 'XenDesktop', 'xendesktop', 'AppController', 'appcontroller', 'VDIinaBox', 'vdiinabox'].include?(value)
        fail("Invalid value '#{value}'. Valid values are XenApp, XenDesktop, AppController, VDIinaBox")
      end
    end
  end

  # Name:         Servers
  # Type:         string[]
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_servers, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "Servers - Citrix XenDesktop delivery controllers"
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         Port
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_port) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "Port - Xml service communication port"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         TransportType
  # Type:         string
  # IsMandatory:  False
  # Values:       ["HTTP", "HTTPS", "SSL"]
  newparam(:dsc_transporttype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "TransportType - Xml service transport type Valid values are HTTP, HTTPS, SSL."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['HTTP', 'http', 'HTTPS', 'https', 'SSL', 'ssl'].include?(value)
        fail("Invalid value '#{value}'. Valid values are HTTP, HTTPS, SSL")
      end
    end
  end

  # Name:         LoadBalance
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_loadbalance) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "LoadBalance - Round robin load balance the xml service servers"
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         SSLRelayServicePort
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_sslrelayserviceport) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "SSLRelayServicePort - Period of time to skip a server when is fails to respond"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         AllFailedBypassDuration
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_allfailedbypassduration) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "AllFailedBypassDuration - Period of time to skip all xml service requests should all servers fail to respond"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         BypassDuration
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_bypassduration) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "BypassDuration - Period of time to skip a server when is fails to respond"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         TicketTimeToLive
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_tickettimetolive) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "TicketTimeToLive - Period of time an ICA launch ticket is valid once requested on pre 7.0 XenApp and XenDesktop farms"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         RadeTicketTimeToLive
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_radetickettimetolive) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "RadeTicketTimeToLive - Period of time a RADE launch ticket is valid once requested on pre 7.0 XenApp and XenDesktop farms"
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         MaxFailedServersPerRequest
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_maxfailedserversperrequest) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "MaxFailedServersPerRequest - Maximum number of servers within a single farm that can fail before aborting a request"
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

Puppet::Type.type(:dsc_sfstorefarm).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
