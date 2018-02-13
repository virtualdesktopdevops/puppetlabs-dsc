require 'pathname'

Puppet::Type.newtype(:dsc_xclusterquorum) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC xClusterQuorum resource type.
    Automatically generated from
    'xFailOverCluster/DSCResources/MSFT_xClusterQuorum/MSFT_xClusterQuorum.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_issingleinstance is a required attribute') if self[:dsc_issingleinstance].nil?
    end

  def dscmeta_resource_friendly_name; 'xClusterQuorum' end
  def dscmeta_resource_name; 'MSFT_xClusterQuorum' end
  def dscmeta_module_name; 'xFailOverCluster' end
  def dscmeta_module_version; '1.9.0.0' end

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

  # Name:         IsSingleInstance
  # Type:         string
  # IsMandatory:  True
  # Values:       ["Yes"]
  newparam(:dsc_issingleinstance) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "IsSingleInstance - Specifies the resource is a single instance, the value must be 'Yes'. Valid values are Yes."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Yes', 'yes'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Yes")
      end
    end
  end

  # Name:         Type
  # Type:         string
  # IsMandatory:  False
  # Values:       ["NodeMajority", "NodeAndDiskMajority", "NodeAndFileShareMajority", "NodeAndCloudMajority", "DiskOnly"]
  newparam(:dsc_type) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Type - Quorum type to use. Can be set to either NodeMajority, NodeAndDiskMajority, NodeAndFileShareMajority, NodeAndCloudMajority or DiskOnly. Valid values are NodeMajority, NodeAndDiskMajority, NodeAndFileShareMajority, NodeAndCloudMajority, DiskOnly."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['NodeMajority', 'nodemajority', 'NodeAndDiskMajority', 'nodeanddiskmajority', 'NodeAndFileShareMajority', 'nodeandfilesharemajority', 'NodeAndCloudMajority', 'nodeandcloudmajority', 'DiskOnly', 'diskonly'].include?(value)
        fail("Invalid value '#{value}'. Valid values are NodeMajority, NodeAndDiskMajority, NodeAndFileShareMajority, NodeAndCloudMajority, DiskOnly")
      end
    end
  end

  # Name:         Resource
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_resource) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "Resource - The name of the disk, file share or Azure storage account resource to use as witness. This parameter is optional if the quorum type is set to NodeMajority."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         StorageAccountAccessKey
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_storageaccountaccesskey) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "StorageAccountAccessKey - The access key of the Azure storage account to use as witness. This parameter is required if the quorum type is set to NodeAndCloudMajority. The key is currently not updated if the resource is already set."
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

Puppet::Type.type(:dsc_xclusterquorum).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
