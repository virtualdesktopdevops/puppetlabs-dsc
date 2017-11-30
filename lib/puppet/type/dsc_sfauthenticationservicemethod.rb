require 'pathname'

Puppet::Type.newtype(:dsc_sfauthenticationservicemethod) do
  require Pathname.new(__FILE__).dirname + '../../' + 'puppet/type/base_dsc'
  require Pathname.new(__FILE__).dirname + '../../puppet_x/puppetlabs/dsc_type_helpers'


  @doc = %q{
    The DSC SFAuthenticationServiceMethod resource type.
    Automatically generated from
    'Storefront/DSCResources/VE_SFAuthenticationServiceMethod/VE_SFAuthenticationServiceMethod.schema.mof'

    To learn more about PowerShell Desired State Configuration, please
    visit https://technet.microsoft.com/en-us/library/dn249912.aspx.

    For more information about built-in DSC Resources, please visit
    https://technet.microsoft.com/en-us/library/dn249921.aspx.

    For more information about xDsc Resources, please visit
    https://github.com/PowerShell/DscResources.
  }

  validate do
      fail('dsc_virtualpath is a required attribute') if self[:dsc_virtualpath].nil?
    end

  def dscmeta_resource_friendly_name; 'SFAuthenticationServiceMethod' end
  def dscmeta_resource_name; 'VE_SFAuthenticationServiceMethod' end
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

  # Name:         VirtualPath
  # Type:         string
  # IsMandatory:  True
  # Values:       None
  newparam(:dsc_virtualpath) do
    def mof_type; 'string' end
    def mof_is_embedded?; false end
    desc "VirtualPath - Citrix Storefront Authentication Service IIS Virtual Path"
    isrequired
    validate do |value|
      unless value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string")
      end
    end
  end

  # Name:         AuthenticationMethods
  # Type:         string[]
  # IsMandatory:  False
  # Values:       ["IntegratedWindows", "HttpBasic", "ExplicitForms", "CitrixFederation", "CitrixAGBasic", "Certificate"]
  newparam(:dsc_authenticationmethods, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "AuthenticationMethods - Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate."
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
      if value.kind_of?(Array)
        unless (['IntegratedWindows', 'integratedwindows', 'HttpBasic', 'httpbasic', 'ExplicitForms', 'explicitforms', 'CitrixFederation', 'citrixfederation', 'CitrixAGBasic', 'citrixagbasic', 'Certificate', 'certificate'] & value).count == value.count
          fail("Invalid value #{value}. Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate")
        end
      end
      if value.kind_of?(String)
        unless ['IntegratedWindows', 'integratedwindows', 'HttpBasic', 'httpbasic', 'ExplicitForms', 'explicitforms', 'CitrixFederation', 'citrixfederation', 'CitrixAGBasic', 'citrixagbasic', 'Certificate', 'certificate'].include?(value)
          fail("Invalid value #{value}. Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate")
        end
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         IncludeAuthenticationMethods
  # Type:         string[]
  # IsMandatory:  False
  # Values:       ["IntegratedWindows", "HttpBasic", "ExplicitForms", "CitrixFederation", "CitrixAGBasic", "Certificate"]
  newparam(:dsc_includeauthenticationmethods, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "IncludeAuthenticationMethods - Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate."
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
      if value.kind_of?(Array)
        unless (['IntegratedWindows', 'integratedwindows', 'HttpBasic', 'httpbasic', 'ExplicitForms', 'explicitforms', 'CitrixFederation', 'citrixfederation', 'CitrixAGBasic', 'citrixagbasic', 'Certificate', 'certificate'] & value).count == value.count
          fail("Invalid value #{value}. Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate")
        end
      end
      if value.kind_of?(String)
        unless ['IntegratedWindows', 'integratedwindows', 'HttpBasic', 'httpbasic', 'ExplicitForms', 'explicitforms', 'CitrixFederation', 'citrixfederation', 'CitrixAGBasic', 'citrixagbasic', 'Certificate', 'certificate'].include?(value)
          fail("Invalid value #{value}. Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate")
        end
      end
    end
    munge do |value|
      Array(value)
    end
  end

  # Name:         ExcludeAuthenticationMethods
  # Type:         string[]
  # IsMandatory:  False
  # Values:       ["IntegratedWindows", "HttpBasic", "ExplicitForms", "CitrixFederation", "CitrixAGBasic", "Certificate"]
  newparam(:dsc_excludeauthenticationmethods, :array_matching => :all) do
    def mof_type; 'string[]' end
    def mof_is_embedded?; false end
    desc "ExcludeAuthenticationMethods - Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate."
    validate do |value|
      unless value.kind_of?(Array) || value.kind_of?(String)
        fail("Invalid value '#{value}'. Should be a string or an array of strings")
      end
      if value.kind_of?(Array)
        unless (['IntegratedWindows', 'integratedwindows', 'HttpBasic', 'httpbasic', 'ExplicitForms', 'explicitforms', 'CitrixFederation', 'citrixfederation', 'CitrixAGBasic', 'citrixagbasic', 'Certificate', 'certificate'] & value).count == value.count
          fail("Invalid value #{value}. Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate")
        end
      end
      if value.kind_of?(String)
        unless ['IntegratedWindows', 'integratedwindows', 'HttpBasic', 'httpbasic', 'ExplicitForms', 'explicitforms', 'CitrixFederation', 'citrixfederation', 'CitrixAGBasic', 'citrixagbasic', 'Certificate', 'certificate'].include?(value)
          fail("Invalid value #{value}. Valid values are IntegratedWindows, HttpBasic, ExplicitForms, CitrixFederation, CitrixAGBasic, Certificate")
        end
      end
    end
    munge do |value|
      Array(value)
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

Puppet::Type.type(:dsc_sfauthenticationservicemethod).provide :powershell, :parent => Puppet::Type.type(:base_dsc).provider(:powershell) do
  confine :true => (Gem::Version.new(Facter.value(:powershell_version)) >= Gem::Version.new('5.0.10586.117'))
  defaultfor :operatingsystem => :windows

  mk_resource_methods
end
