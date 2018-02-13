require 'pathname'

Puppet::Type.newtype(:dsc_disk) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC Disk resource type.
    Automatically generated from
    'StorageDsc/DSCResources/MSFT_Disk/MSFT_Disk.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_driveletter is a required attribute') if self[:dsc_driveletter].nil?
    end

  def dscmeta_resource_friendly_name; 'Disk' end
  def dscmeta_resource_name; 'MSFT_Disk' end
  def dscmeta_module_name; 'StorageDsc' end
  def dscmeta_module_version; '4.0.0.0' end

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

  # Name:         DriveLetter
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_driveletter) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DriveLetter - Specifies the identifier for which disk to modify."
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         DiskId
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_diskid) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DiskId - Specifies the disk identifier for the disk to modify."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         DiskIdType
  # Type:         string
  # IsMandatory:  False
  # Values:       ["Number", "UniqueId", "Guid"]
  newparam(:dsc_diskidtype) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "DiskIdType - Specifies the identifier type the DiskId contains. Defaults to Number. Valid values are Number, UniqueId, Guid."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['Number', 'number', 'UniqueId', 'uniqueid', 'Guid', 'guid'].include?(value)
        fail("Invalid value '#{value}'. Valid values are Number, UniqueId, Guid")
      end
    end
  end

  # Name:         Size
  # Type:         uint64
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_size) do
    def mof_type; 'uint64' end
    def mof_is_embedded?; false end
    desc "Size - Specifies the size of new volume. Leave empty to use the remaining free space."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         FSLabel
  # Type:         string
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_fslabel) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "FSLabel - Define volume label if required."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         AllocationUnitSize
  # Type:         uint32
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_allocationunitsize) do
    def mof_type; 'uint32' end
    def mof_is_embedded?; false end
    desc "AllocationUnitSize - Specifies the allocation unit size to use when formatting the volume."
    validate do |value|
      unless (value.kind_of?(Numeric) && value >= 0) || (value.to_i.to_s == value && value.to_i >= 0)
          fail("Invalid value #{value}. Should be a unsigned Integer")
      end
    end
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_integer(value)
    end
  end

  # Name:         FSFormat
  # Type:         string
  # IsMandatory:  False
  # Values:       ["NTFS", "ReFS"]
  newparam(:dsc_fsformat) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "FSFormat - Specifies the file system format of the new volume. Valid values are NTFS, ReFS."
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
      unless ['NTFS', 'ntfs', 'ReFS', 'refs'].include?(value)
        fail("Invalid value '#{value}'. Valid values are NTFS, ReFS")
      end
    end
  end

  # Name:         AllowDestructive
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_allowdestructive) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "AllowDestructive - Specifies if potentially destructive operations may occur."
    validate do |value|
    end
    newvalues(true, false)
    munge do |value|
      PuppetX::Dsc::TypeHelpers.munge_boolean(value.to_s)
    end
  end

  # Name:         ClearDisk
  # Type:         boolean
  # IsMandatory:  False
  # Values:       None
  newparam(:dsc_cleardisk) do
    def mof_type; 'boolean' end
    def mof_is_embedded?; false end
    desc "ClearDisk - Specifies if the disks partition schema should be removed entirely, even if data and oem partitions are present. Only possible with AllowDestructive enabled."
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

Puppet::Type.type(:dsc_disk).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
