require 'pathname'

Puppet::Type.newtype(:dsc_xdnsrecord) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC xDnsRecord resource type.
    Automatically generated from
    'xDnsServer/DSCResources/MSFT_xDnsRecord/MSFT_xDnsRecord.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_name is a required attribute') if self[:dsc_name].nil?
      fail('dsc_zone is a required attribute') if self[:dsc_zone].nil?
      fail('dsc_target is a required attribute') if self[:dsc_target].nil?
    end

  def dscmeta_resource_friendly_name; 'xDnsRecord' end
  def dscmeta_resource_name; 'MSFT_xDnsRecord' end
  def dscmeta_module_name; 'xDnsServer' end
  def dscmeta_module_version; '1.9.0.0' end

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
    desc "Name"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         Zone
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_zone) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Zone"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         Type
  # Type:         string
  # IsMandatory:  False
  # Values:       ["ARecord", "CName"]
  newparam(:dsc_type) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Type - Valid values are ARecord, CName."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['ARecord', 'arecord', 'CName', 'cname'].include?(value)
        fail("Invalid value '#{value}'. Valid values are ARecord, CName")
      end
    end
  end

  # Name:         Target
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_target) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Target"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         DnsServer
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_dnsserver) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DnsServer"
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
    desc "Ensure - Should this DNS resource record be present or absent Valid values are Present, Absent."
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

Puppet::Type.type(:dsc_xdnsrecord).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
