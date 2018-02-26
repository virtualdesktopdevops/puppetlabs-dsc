## Resource Types included with DSC module
For any system this module is installed on, use
`Puppet describe typename` for more information.

#### WMF Core Types

Puppet Type | DSC Resource
----------- | -----------------
dsc_auditpolicycsv | [AuditPolicyCsv](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/AuditPolicyDsc/DSCResources/MSFT_AuditPolicyCsv) | import/dsc_resources/AuditPolicyDsc/DSCResources/MSFT_AuditPolicyCsv/MSFT_AuditPolicyCsv.schema.mof
dsc_auditpolicyoption | [AuditPolicyOption](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/AuditPolicyDsc/DSCResources/MSFT_AuditPolicyOption) | import/dsc_resources/AuditPolicyDsc/DSCResources/MSFT_AuditPolicyOption/MSFT_AuditPolicyOption.schema.mof
dsc_auditpolicysubcategory | [AuditPolicySubcategory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/AuditPolicyDsc/DSCResources/MSFT_AuditPolicySubcategory) | import/dsc_resources/AuditPolicyDsc/DSCResources/MSFT_AuditPolicySubcategory/MSFT_AuditPolicySubcategory.schema.mof
dsc_officeonlineserverfarm | [OfficeOnlineServerFarm](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerFarm) | import/dsc_resources/OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerFarm/MSFT_OfficeOnlineServerFarm.schema.mof
dsc_officeonlineserverinstall | [OfficeOnlineServerInstall](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerInstall) | import/dsc_resources/OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerInstall/MSFT_OfficeOnlineServerInstall.schema.mof
dsc_officeonlineserverinstalllanguagepack | [OfficeOnlineServerInstallLanguagePack](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerInstallLanguagePack) | import/dsc_resources/OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerInstallLanguagePack/MSFT_OfficeOnlineServerInstallLanguagePack.schema.mof
dsc_officeonlineservermachine | [OfficeOnlineServerMachine](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerMachine) | import/dsc_resources/OfficeOnlineServerDsc/DSCResources/MSFT_OfficeOnlineServerMachine/MSFT_OfficeOnlineServerMachine.schema.mof
dsc_archive | [Archive](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_ArchiveResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_ArchiveResource/MSFT_ArchiveResource.schema.mof
dsc_environment | [Environment](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_EnvironmentResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_EnvironmentResource/MSFT_EnvironmentResource.schema.mof
dsc_file | [File](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_FileDirectoryConfiguration) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_FileDirectoryConfiguration/MSFT_FileDirectoryConfiguration.schema.mof
dsc_group | [Group](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_GroupResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_GroupResource/MSFT_GroupResource.schema.mof
dsc_log | [Log](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_LogResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_LogResource/MSFT_LogResource.schema.mof
dsc_package | [Package](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_PackageResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_PackageResource/MSFT_PackageResource.schema.mof
dsc_windowsprocess | [WindowsProcess](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_ProcessResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_ProcessResource/MSFT_ProcessResource.schema.mof
dsc_registry | [Registry](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_RegistryResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_RegistryResource/MSFT_RegistryResource.schema.mof
dsc_windowsfeature | [WindowsFeature](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_RoleResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_RoleResource/MSFT_RoleResource.schema.mof
dsc_script | [Script](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_ScriptResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_ScriptResource/MSFT_ScriptResource.schema.mof
dsc_service | [Service](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_ServiceResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_ServiceResource/MSFT_ServiceResource.schema.mof
dsc_user | [User](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_UserResource) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_UserResource/MSFT_UserResource.schema.mof
dsc_windowsoptionalfeature | [WindowsOptionalFeature](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_WindowsOptionalFeature) | import/dsc_resources/PSDesiredStateConfiguration/DSCResources/MSFT_WindowsOptionalFeature/MSFT_WindowsOptionalFeature.schema.mof
dsc_accountpolicy | [AccountPolicy](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SecurityPolicyDsc/DSCResources/MSFT_AccountPolicy) | import/dsc_resources/SecurityPolicyDsc/DSCResources/MSFT_AccountPolicy/MSFT_AccountPolicy.schema.mof
dsc_securityoption | [SecurityOption](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SecurityPolicyDsc/DSCResources/MSFT_SecurityOption) | import/dsc_resources/SecurityPolicyDsc/DSCResources/MSFT_SecurityOption/MSFT_SecurityOption.schema.mof
dsc_securitytemplate | [SecurityTemplate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SecurityPolicyDsc/DSCResources/MSFT_SecurityTemplate) | import/dsc_resources/SecurityPolicyDsc/DSCResources/MSFT_SecurityTemplate/MSFT_SecurityTemplate.schema.mof
dsc_userrightsassignment | [UserRightsAssignment](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SecurityPolicyDsc/DSCResources/MSFT_UserRightsAssignment) | import/dsc_resources/SecurityPolicyDsc/DSCResources/MSFT_UserRightsAssignment/MSFT_UserRightsAssignment.schema.mof
dsc_spaccessserviceapp | [SPAccessServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPAccessServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPAccessServiceApp/MSFT_SPAccessServiceApp.schema.mof
dsc_spaccessservices2010 | [SPAccessServices2010](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPAccessServices2010) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPAccessServices2010/MSFT_SPAccessServices2010.schema.mof
dsc_spalternateurl | [SPAlternateUrl](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPAlternateUrl) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPAlternateUrl/MSFT_SPAlternateUrl.schema.mof
dsc_spantivirussettings | [SPAntivirusSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPAntivirusSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPAntivirusSettings/MSFT_SPAntivirusSettings.schema.mof
dsc_spappcatalog | [SPAppCatalog](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPAppCatalog) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPAppCatalog/MSFT_SPAppCatalog.schema.mof
dsc_spappdomain | [SPAppDomain](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPAppDomain) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPAppDomain/MSFT_SPAppDomain.schema.mof
dsc_spappmanagementserviceapp | [SPAppManagementServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPAppManagementServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPAppManagementServiceApp/MSFT_SPAppManagementServiceApp.schema.mof
dsc_spappstoresettings | [SPAppStoreSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPAppStoreSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPAppStoreSettings/MSFT_SPAppStoreSettings.schema.mof
dsc_spbcsserviceapp | [SPBCSServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPBCSServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPBCSServiceApp/MSFT_SPBCSServiceApp.schema.mof
dsc_spblobcachesettings | [SPBlobCacheSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPBlobCacheSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPBlobCacheSettings/MSFT_SPBlobCacheSettings.schema.mof
dsc_spcacheaccounts | [SPCacheAccounts](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPCacheAccounts) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPCacheAccounts/MSFT_SPCacheAccounts.schema.mof
dsc_spconfigwizard | [SPConfigWizard](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPConfigWizard) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPConfigWizard/MSFT_SPConfigWizard.schema.mof
dsc_spcontentdatabase | [SPContentDatabase](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPContentDatabase) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPContentDatabase/MSFT_SPContentDatabase.schema.mof
dsc_spcreatefarm | [SPCreateFarm](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPCreateFarm) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPCreateFarm/MSFT_SPCreateFarm.schema.mof
dsc_spdatabaseaag | [SPDatabaseAAG](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPDatabaseAAG) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPDatabaseAAG/MSFT_SPDatabaseAAG.schema.mof
dsc_spdesignersettings | [SPDesignerSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPDesignerSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPDesignerSettings/MSFT_SPDesignerSettings.schema.mof
dsc_spdiagnosticloggingsettings | [SPDiagnosticLoggingSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPDiagnosticLoggingSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPDiagnosticLoggingSettings/MSFT_SPDiagnosticLoggingSettings.schema.mof
dsc_spdiagnosticsprovider | [SPDiagnosticsProvider](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPDiagnosticsProvider) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPDiagnosticsProvider/MSFT_SPDiagnosticsProvider.schema.mof
dsc_spdistributedcacheservice | [SPDistributedCacheService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPDistributedCacheService) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPDistributedCacheService/MSFT_SPDistributedCacheService.schema.mof
dsc_spexcelserviceapp | [SPExcelServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPExcelServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPExcelServiceApp/MSFT_SPExcelServiceApp.schema.mof
dsc_spfarm | [SPFarm](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPFarm) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPFarm/MSFT_SPFarm.schema.mof
dsc_spfarmadministrators | [SPFarmAdministrators](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPFarmAdministrators) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPFarmAdministrators/MSFT_SPFarmAdministrators.schema.mof
dsc_spfarmpropertybag | [SPFarmPropertyBag](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPFarmPropertyBag) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPFarmPropertyBag/MSFT_SPFarmPropertyBag.schema.mof
dsc_spfarmsolution | [SPFarmSolution](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPFarmSolution) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPFarmSolution/MSFT_SPFarmSolution.schema.mof
dsc_spfeature | [SPFeature](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPFeature) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPFeature/MSFT_SPFeature.schema.mof
dsc_sphealthanalyzerrulestate | [SPHealthAnalyzerRuleState](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPHealthAnalyzerRuleState) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPHealthAnalyzerRuleState/MSFT_SPHealthAnalyzerRuleState.schema.mof
dsc_spinfopathformsserviceconfig | [SPInfoPathFormsServiceConfig](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPInfoPathFormsServiceConfig) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPInfoPathFormsServiceConfig/MSFT_SPInfoPathFormsServiceConfig.schema.mof
dsc_spinstall | [SPInstall](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPInstall) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPInstall/MSFT_SPInstall.schema.mof
dsc_spinstalllanguagepack | [SPInstallLanguagePack](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPInstallLanguagePack) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPInstallLanguagePack/MSFT_SPInstallLanguagePack.schema.mof
dsc_spinstallprereqs | [SPInstallPrereqs](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPInstallPrereqs) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPInstallPrereqs/MSFT_SPInstallPrereqs.schema.mof
dsc_spirmsettings | [SPIrmSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPIrmSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPIrmSettings/MSFT_SPIrmSettings.schema.mof
dsc_spjoinfarm | [SPJoinFarm](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPJoinFarm) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPJoinFarm/MSFT_SPJoinFarm.schema.mof
dsc_sploglevel | [SPLogLevel](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPLogLevel) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPLogLevel/MSFT_SPLogLevel.schema.mof
dsc_spmachinetranslationserviceapp | [SPMachineTranslationServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPMachineTranslationServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPMachineTranslationServiceApp/MSFT_SPMachineTranslationServiceApp.schema.mof
dsc_spmanagedaccount | [SPManagedAccount](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPManagedAccount) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPManagedAccount/MSFT_SPManagedAccount.schema.mof
dsc_spmanagedmetadataserviceapp | [SPManagedMetaDataServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPManagedMetadataServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPManagedMetadataServiceApp/MSFT_SPManagedMetaDataServiceApp.schema.mof
dsc_spmanagedmetadataserviceappdefault | [SPManagedMetaDataServiceAppDefault](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPManagedMetadataServiceAppDefault) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPManagedMetadataServiceAppDefault/MSFT_SPManagedMetadataServiceAppDefault.schema.mof
dsc_spmanagedpath | [SPManagedPath](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPManagedPath) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPManagedPath/MSFT_SPManagedPath.schema.mof
dsc_spminrolecompliance | [SPMinRoleCompliance](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPMinRoleCompliance) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPMinRoleCompliance/MSFT_SPMinRoleCompliance.schema.mof
dsc_spofficeonlineserverbinding | [SPOfficeOnlineServerBinding](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPOfficeOnlineServerBinding) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPOfficeOnlineServerBinding/MSFT_SPOfficeOnlineServerBinding.schema.mof
dsc_spoutgoingemailsettings | [SPOutgoingEmailSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPOutgoingEmailSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPOutgoingEmailSettings/MSFT_SPOutgoingEmailSettings.schema.mof
dsc_sppasswordchangesettings | [SPPasswordChangeSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPPasswordChangeSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPPasswordChangeSettings/MSFT_SPPasswordChangeSettings.schema.mof
dsc_spperformancepointserviceapp | [SPPerformancePointServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPPerformancePointServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPPerformancePointServiceApp/MSFT_SPPerformancePointServiceApp.schema.mof
dsc_sppowerpointautomationserviceapp | [SPPowerPointAutomationServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPPowerPointAutomationServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPPowerPointAutomationServiceApp/MSFT_SPPowerPointAutomationServiceApp.schema.mof
dsc_spproductupdate | [SPProductUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProductUpdate) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProductUpdate/MSFT_SPProductUpdate.schema.mof
dsc_spprojectserveradresourcepoolsync | [SPProjectServerADResourcePoolSync](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerADResourcePoolSync) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerADResourcePoolSync/MSFT_SPProjectServerADResourcePoolSync.schema.mof
dsc_spprojectserveradditionalsettings | [SPProjectServerAdditionalSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerAdditionalSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerAdditionalSettings/MSFT_SPProjectServerAdditionalSettings.schema.mof
dsc_spprojectserverglobalpermissions | [SPProjectServerGlobalPermissions](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerGlobalPermissions) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerGlobalPermissions/MSFT_SPProjectServerGlobalPermissions.schema.mof
dsc_spprojectservergroup | [SPProjectServerGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerGroup) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerGroup/MSFT_SPProjectServerGroup.schema.mof
dsc_spprojectserverlicense | [SPProjectServerLicense](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerLicense) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerLicense/MSFT_SPProjectServerLicense.schema.mof
dsc_spprojectserverpermissionmode | [SPProjectServerPermissionMode](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerPermissionMode) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerPermissionMode/MSFT_SPProjectServerPermissionMode.schema.mof
dsc_spprojectserverserviceapp | [SPProjectServerServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerServiceApp/MSFT_SPProjectServerServiceApp.schema.mof
dsc_spprojectservertimesheetsettings | [SPProjectServerTimeSheetSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerTimeSheetSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerTimeSheetSettings/MSFT_SPProjectServerTimeSheetSettings.schema.mof
dsc_spprojectserverusersyncsettings | [SPProjectServerUserSyncSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerUserSyncSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerUserSyncSettings/MSFT_SPProjectServerUserSyncSettings.schema.mof
dsc_spprojectserverwsssettings | [SPProjectServerWssSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerWssSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPProjectServerWssSettings/MSFT_SPProjectServerWssSettings.schema.mof
dsc_sppublishserviceapplication | [SPPublishServiceApplication](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPPublishServiceApplication) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPPublishServiceApplication/MSFT_SPPublishServiceApplication.schema.mof
dsc_spquotatemplate | [SPQuotaTemplate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPQuotaTemplate) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPQuotaTemplate/MSFT_SPQuotaTemplate.schema.mof
dsc_spremotefarmtrust | [SPRemoteFarmTrust](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPRemoteFarmTrust) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPRemoteFarmTrust/MSFT_SPRemoteFarmTrust.schema.mof
dsc_spsearchauthoritativepage | [SPSearchAuthoritativePage](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchAuthoritativePage) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchAuthoritativePage/MSFT_SPSearchAuthoritativePage.schema.mof
dsc_spsearchcontentsource | [SPSearchContentSource](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchContentSource) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchContentSource/MSFT_SPSearchContentSource.schema.mof
dsc_spsearchcrawlmapping | [SPSearchCrawlMapping](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchCrawlMapping) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchCrawlMapping/MSFT_SPSearchCrawlMapping.schema.mof
dsc_spsearchcrawlrule | [SPSearchCrawlRule](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchCrawlRule) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchCrawlRule/MSFT_SPSearchCrawlRule.schema.mof
dsc_spsearchcrawlerimpactrule | [SPSearchCrawlerImpactRule](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchCrawlerImpactRule) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchCrawlerImpactRule/MSFT_SPSearchCrawlerImpactRule.schema.mof
dsc_spsearchfiletype | [SPSearchFileType](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchFileType) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchFileType/MSFT_SPSearchFileType.schema.mof
dsc_spsearchindexpartition | [SPSearchIndexPartition](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchIndexPartition) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchIndexPartition/MSFT_SPSearchIndexPartition.schema.mof
dsc_spsearchresultsource | [SPSearchResultSource](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchResultSource) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchResultSource/MSFT_SPSearchResultSource.schema.mof
dsc_spsearchserviceapp | [SPSearchServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchServiceApp/MSFT_SPSearchServiceApp.schema.mof
dsc_spsearchtopology | [SPSearchTopology](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchTopology) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSearchTopology/MSFT_SPSearchTopology.schema.mof
dsc_spsecurestoreserviceapp | [SPSecureStoreServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSecureStoreServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSecureStoreServiceApp/MSFT_SPSecureStoreServiceApp.schema.mof
dsc_spsecuritytokenserviceconfig | [SPSecurityTokenServiceConfig](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSecurityTokenServiceConfig) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSecurityTokenServiceConfig/MSFT_SPSecurityTokenServiceConfig.schema.mof
dsc_spserviceapppool | [SPServiceAppPool](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceAppPool) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceAppPool/MSFT_SPServiceAppPool.schema.mof
dsc_spserviceappproxygroup | [SPServiceAppProxyGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceAppProxyGroup) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceAppProxyGroup/MSFT_SPServiceAppProxyGroup.schema.mof
dsc_spserviceappsecurity | [SPServiceAppSecurity](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceAppSecurity) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceAppSecurity/MSFT_SPServiceAppSecurity.schema.mof
dsc_spserviceidentity | [SPServiceIdentity](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceIdentity) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceIdentity/MSFT_SPServiceIdentity.schema.mof
dsc_spserviceinstance | [SPServiceInstance](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceInstance) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPServiceInstance/MSFT_SPServiceInstance.schema.mof
dsc_spsessionstateservice | [SPSessionStateService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSessionStateService) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSessionStateService/MSFT_SPSessionStateService.schema.mof
dsc_spshelladmins | [SPShellAdmins](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPShellAdmins) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPShellAdmins/MSFT_SPShellAdmins.schema.mof
dsc_spsite | [SPSite](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSite) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSite/MSFT_SPSite.schema.mof
dsc_spstateserviceapp | [SPStateServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPStateServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPStateServiceApp/MSFT_SPStateServiceApp.schema.mof
dsc_spsubscriptionsettingsserviceapp | [SPSubscriptionSettingsServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPSubscriptionSettingsServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPSubscriptionSettingsServiceApp/MSFT_SPSubscriptionSettingsServiceApp.schema.mof
dsc_sptimerjobstate | [SPTimerJobState](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPTimerJobState) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPTimerJobState/MSFT_SPTimerJobState.schema.mof
dsc_sptrustedidentitytokenissuer | [SPTrustedIdentityTokenIssuer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPTrustedIdentityTokenIssuer) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPTrustedIdentityTokenIssuer/MSFT_SPTrustedIdentityTokenIssuer.schema.mof
dsc_sptrustedrootauthority | [SPTrustedRootAuthority](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPTrustedRootAuthority) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPTrustedRootAuthority/MSFT_SPTrustedRootAuthority.schema.mof
dsc_spusageapplication | [SPUsageApplication](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPUsageApplication) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPUsageApplication/MSFT_SPUsageApplication.schema.mof
dsc_spuserprofileproperty | [SPUserProfileProperty](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileProperty) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileProperty/MSFT_SPUserProfileProperty.schema.mof
dsc_spuserprofilesection | [SPUserProfileSection](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileSection) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileSection/MSFT_SPUserProfileSection.schema.mof
dsc_spuserprofileserviceapp | [SPUserProfileServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileServiceApp/MSFT_SPUserProfileServiceApp.schema.mof
dsc_spuserprofileserviceapppermissions | [SPUserProfileServiceAppPermissions](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileServiceAppPermissions) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileServiceAppPermissions/MSFT_SPUserProfileServiceAppPermissions.schema.mof
dsc_spuserprofilesyncconnection | [SPUserProfileSyncConnection](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileSyncConnection) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileSyncConnection/MSFT_SPUserProfileSyncConnection.schema.mof
dsc_spuserprofilesyncservice | [SPUserProfileSyncService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileSyncService) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPUserProfileSyncService/MSFT_SPUserProfileSyncService.schema.mof
dsc_spvisioserviceapp | [SPVisioServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPVisioServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPVisioServiceApp/MSFT_SPVisioServiceApp.schema.mof
dsc_spweb | [SPWeb](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWeb) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWeb/MSFT_SPWeb.schema.mof
dsc_spwebappauthentication | [SPWebAppAuthentication](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppAuthentication) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppAuthentication/MSFT_SPWebAppAuthentication.schema.mof
dsc_spwebappblockedfiletypes | [SPWebAppBlockedFileTypes](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppBlockedFileTypes) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppBlockedFileTypes/MSFT_SPWebAppBlockedFileTypes.schema.mof
dsc_spwebappgeneralsettings | [SPWebAppGeneralSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppGeneralSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppGeneralSettings/MSFT_SPWebAppGeneralSettings.schema.mof
dsc_spwebapppeoplepickersettings | [SPWebAppPeoplePickerSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppPeoplePickerSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppPeoplePickerSettings/MSFT_SPWebAppPeoplePickerSettings.schema.mof
dsc_spwebapppermissions | [SPWebAppPermissions](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppPermissions) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppPermissions/MSFT_SPWebAppPermissions.schema.mof
dsc_spwebapppolicy | [SPWebAppPolicy](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppPolicy) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppPolicy/MSFT_SPWebAppPolicy.schema.mof
dsc_spwebappproxygroup | [SPWebAppProxyGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppProxyGroup) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppProxyGroup/MSFT_SPWebAppProxyGroup.schema.mof
dsc_spwebappsiteuseanddeletion | [SPWebAppSiteUseAndDeletion](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppSiteUseAndDeletion) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppSiteUseAndDeletion/MSFT_SPWebAppSiteUseAndDeletion.schema.mof
dsc_spwebappsuitebar | [SPWebAppSuiteBar](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppSuiteBar) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppSuiteBar/MSFT_SPWebAppSuiteBar.schema.mof
dsc_spwebappthrottlingsettings | [SPWebAppThrottlingSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppThrottlingSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppThrottlingSettings/MSFT_SPWebAppThrottlingSettings.schema.mof
dsc_spwebappworkflowsettings | [SPWebAppWorkflowSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppWorkflowSettings) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebAppWorkflowSettings/MSFT_SPWebAppWorkflowSettings.schema.mof
dsc_spwebapplication | [SPWebApplication](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebApplication) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebApplication/MSFT_SPWebApplication.schema.mof
dsc_spwebapplicationappdomain | [SPWebApplicationAppDomain](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebApplicationAppDomain) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebApplicationAppDomain/MSFT_SPWebApplicationAppDomain.schema.mof
dsc_spwebapplicationextension | [SPWebApplicationExtension](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebApplicationExtension) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWebApplicationExtension/MSFT_SPWebApplicationExtension.schema.mof
dsc_spwordautomationserviceapp | [SPWordAutomationServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWordAutomationServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWordAutomationServiceApp/MSFT_SPWordAutomationServiceApp.schema.mof
dsc_spworkmanagementserviceapp | [SPWorkManagementServiceApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWorkManagementServiceApp) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWorkManagementServiceApp/MSFT_SPWorkManagementServiceApp.schema.mof
dsc_spworkflowservice | [SPWorkflowService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SharePointDsc/DSCResources/MSFT_SPWorkflowService) | import/dsc_resources/SharePointDsc/DSCResources/MSFT_SPWorkflowService/MSFT_SPWorkflowService.schema.mof
dsc_sqlag | [SqlAG](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAG) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAG/MSFT_SqlAG.schema.mof
dsc_sqlagdatabase | [SqlAGDatabase](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAGDatabase) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAGDatabase/MSFT_SqlAGDatabase.schema.mof
dsc_sqlaglistener | [SqlAGListener](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAGListener) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAGListener/MSFT_SqlAGListener.schema.mof
dsc_sqlagreplica | [SqlAGReplica](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAGReplica) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAGReplica/MSFT_SqlAGReplica.schema.mof
dsc_sqlalias | [SqlAlias](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAlias) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAlias/MSFT_SqlAlias.schema.mof
dsc_sqlalwaysonservice | [SqlAlwaysOnService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAlwaysOnService) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlAlwaysOnService/MSFT_SqlAlwaysOnService.schema.mof
dsc_sqldatabase | [SqlDatabase](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabase) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabase/MSFT_SqlDatabase.schema.mof
dsc_sqldatabasedefaultlocation | [SqlDatabaseDefaultLocation](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabaseDefaultLocation) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabaseDefaultLocation/MSFT_SqlDatabaseDefaultLocation.schema.mof
dsc_sqldatabaseowner | [SqlDatabaseOwner](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabaseOwner) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabaseOwner/MSFT_SqlDatabaseOwner.schema.mof
dsc_sqldatabasepermission | [SqlDatabasePermission](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabasePermission) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabasePermission/MSFT_SqlDatabasePermission.schema.mof
dsc_sqldatabaserecoverymodel | [SqlDatabaseRecoveryModel](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabaseRecoveryModel) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabaseRecoveryModel/MSFT_SqlDatabaseRecoveryModel.schema.mof
dsc_sqldatabaserole | [SqlDatabaseRole](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabaseRole) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlDatabaseRole/MSFT_SqlDatabaseRole.schema.mof
dsc_sqlrs | [SqlRS](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlRS) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlRS/MSFT_SqlRS.schema.mof
dsc_sqlscript | [SqlScript](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlScript) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlScript/MSFT_SqlScript.schema.mof
dsc_sqlserverconfiguration | [SqlServerConfiguration](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerConfiguration) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerConfiguration/MSFT_SqlServerConfiguration.schema.mof
dsc_sqlserverdatabasemail | [SqlServerDatabaseMail](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerDatabaseMail) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerDatabaseMail/MSFT_SqlServerDatabaseMail.schema.mof
dsc_sqlserverendpoint | [SqlServerEndpoint](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerEndpoint) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerEndpoint/MSFT_SqlServerEndpoint.schema.mof
dsc_sqlserverendpointpermission | [SqlServerEndpointPermission](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerEndpointPermission) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerEndpointPermission/MSFT_SqlServerEndpointPermission.schema.mof
dsc_sqlserverendpointstate | [SqlServerEndpointState](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerEndpointState) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerEndpointState/MSFT_SqlServerEndpointState.schema.mof
dsc_sqlserverlogin | [SqlServerLogin](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerLogin) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerLogin/MSFT_SqlServerLogin.schema.mof
dsc_sqlservermaxdop | [SqlServerMaxDop](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerMaxDop) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerMaxDop/MSFT_SqlServerMaxDop.schema.mof
dsc_sqlservermemory | [SqlServerMemory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerMemory) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerMemory/MSFT_SqlServerMemory.schema.mof
dsc_sqlservernetwork | [SqlServerNetwork](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerNetwork) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerNetwork/MSFT_SqlServerNetwork.schema.mof
dsc_sqlserverpermission | [SqlServerPermission](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerPermission) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerPermission/MSFT_SqlServerPermission.schema.mof
dsc_sqlserverreplication | [SqlServerReplication](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerReplication) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerReplication/MSFT_SqlServerReplication.schema.mof
dsc_sqlserverrole | [SqlServerRole](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerRole) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServerRole/MSFT_SqlServerRole.schema.mof
dsc_sqlserviceaccount | [SqlServiceAccount](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServiceAccount) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlServiceAccount/MSFT_SqlServiceAccount.schema.mof
dsc_sqlsetup | [SqlSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlSetup) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlSetup/MSFT_SqlSetup.schema.mof
dsc_sqlwaitforag | [SqlWaitForAG](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlWaitForAG) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlWaitForAG/MSFT_SqlWaitForAG.schema.mof
dsc_sqlwindowsfirewall | [SqlWindowsFirewall](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlWindowsFirewall) | import/dsc_resources/SqlServerDsc/DSCResources/MSFT_SqlWindowsFirewall/MSFT_SqlWindowsFirewall.schema.mof
dsc_disk | [Disk](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/StorageDsc/DSCResources/MSFT_Disk) | import/dsc_resources/StorageDsc/DSCResources/MSFT_Disk/MSFT_Disk.schema.mof
dsc_diskaccesspath | [DiskAccessPath](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/StorageDsc/DSCResources/MSFT_DiskAccessPath) | import/dsc_resources/StorageDsc/DSCResources/MSFT_DiskAccessPath/MSFT_DiskAccessPath.schema.mof
dsc_mountimage | [MountImage](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/StorageDsc/DSCResources/MSFT_MountImage) | import/dsc_resources/StorageDsc/DSCResources/MSFT_MountImage/MSFT_MountImage.schema.mof
dsc_opticaldiskdriveletter | [OpticalDiskDriveLetter](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/StorageDsc/DSCResources/MSFT_OpticalDiskDriveLetter) | import/dsc_resources/StorageDsc/DSCResources/MSFT_OpticalDiskDriveLetter/MSFT_OpticalDiskDriveLetter.schema.mof
dsc_waitfordisk | [WaitForDisk](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/StorageDsc/DSCResources/MSFT_WaitForDisk) | import/dsc_resources/StorageDsc/DSCResources/MSFT_WaitForDisk/MSFT_WaitForDisk.schema.mof
dsc_waitforvolume | [WaitForVolume](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/StorageDsc/DSCResources/MSFT_WaitForVolume) | import/dsc_resources/StorageDsc/DSCResources/MSFT_WaitForVolume/MSFT_WaitForVolume.schema.mof
dsc_systemlocale | [SystemLocale](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/SystemLocaleDsc/DSCResources/MSFT_SystemLocale) | import/dsc_resources/SystemLocaleDsc/DSCResources/MSFT_SystemLocale/MSFT_SystemLocale.schema.mof
dsc_runbookdirectory | [RunbookDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/xSCSMA/DSCResources/MSFT_xRunbookDirectory) | import/dsc_resources/xSCSMA/DSCResources/MSFT_xRunbookDirectory/MSFT_xRunbookDirectory.schema.mof
dsc_smavariable | [SmaVariable](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/build/vendor/wmf_dsc_resources/xSCSMA/DSCResources/MSFT_xSmaVariable) | import/dsc_resources/xSCSMA/DSCResources/MSFT_xSmaVariable/MSFT_xSmaVariable.schema.mof

#### Community x Prefixed types

##### xActiveDirectory

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xadcomputer | [xADComputer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADComputer) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xaddomain | [xADDomain](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADDomain) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xaddomaincontroller | [xADDomainController](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADDomainController) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xaddomaindefaultpasswordpolicy | [xADDomainDefaultPasswordPolicy](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADDomainDefaultPasswordPolicy) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xaddomaintrust | [xADDomainTrust](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADDomainTrust) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xadgroup | [xADGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADGroup) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xadorganizationalunit | [xADOrganizationalUnit](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADOrganizationalUnit) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xadrecyclebin | [xADRecycleBin](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADRecycleBin) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xadserviceprincipalname | [xADServicePrincipalName](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADServicePrincipalName) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xaduser | [xADUser](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xADUser) | [repo](https://github.com/PowerShell/xActiveDirectory)
dsc_xwaitforaddomain | [xWaitForADDomain](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xActiveDirectory/DSCResources/MSFT_xWaitForADDomain) | [repo](https://github.com/PowerShell/xActiveDirectory)

##### xAdcsDeployment

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xadcscertificationauthority | [xAdcsCertificationAuthority](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAdcsDeployment/DSCResources/MSFT_xAdcsCertificationAuthority) | [repo](https://github.com/PowerShell/xAdcsDeployment)
dsc_xadcsonlineresponder | [xAdcsOnlineResponder](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAdcsDeployment/DSCResources/MSFT_xAdcsOnlineResponder) | [repo](https://github.com/PowerShell/xAdcsDeployment)
dsc_xadcswebenrollment | [xAdcsWebEnrollment](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAdcsDeployment/DSCResources/MSFT_xAdcsWebEnrollment) | [repo](https://github.com/PowerShell/xAdcsDeployment)

##### xAzure

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xazureaffinitygroup | [xAzureAffinityGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureAffinityGroup) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazurequickvm | [xAzureQuickVM](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureQuickVM) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazureservice | [xAzureService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureService) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazuresqldatabase | [xAzureSqlDatabase](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureSqlDatabase) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazuresqldatabaseserverfirewallrule | [xAzureSqlDatabaseServerFirewallRule](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureSqlDatabaseServerFirewallRule) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazurestorageaccount | [xAzureStorageAccount](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureStorageAccount) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazuresubscription | [xAzureSubscription](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureSubscription) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazurevm | [xAzureVM](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureVM) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazurevmdscconfiguration | [xAzureVMDscConfiguration](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureVMDscConfiguration) | [repo](https://github.com/PowerShell/xAzure)
dsc_xazurevmdscextension | [xAzureVMDscExtension](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzure/DSCResources/MSFT_xAzureVMDscExtension) | [repo](https://github.com/PowerShell/xAzure)

##### xAzurePack

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xazurepackadmin | [xAzurePackAdmin](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzurePack/DSCResources/MSFT_xAzurePackAdmin) | [repo](https://github.com/PowerShell/xAzurePack)
dsc_xazurepackdatabasesetting | [xAzurePackDatabaseSetting](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzurePack/DSCResources/MSFT_xAzurePackDatabaseSetting) | [repo](https://github.com/PowerShell/xAzurePack)
dsc_xazurepackfqdn | [xAzurePackFQDN](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzurePack/DSCResources/MSFT_xAzurePackFQDN) | [repo](https://github.com/PowerShell/xAzurePack)
dsc_xazurepackidentityprovider | [xAzurePackIdentityProvider](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzurePack/DSCResources/MSFT_xAzurePackIdentityProvider) | [repo](https://github.com/PowerShell/xAzurePack)
dsc_xazurepackrelyingparty | [xAzurePackRelyingParty](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzurePack/DSCResources/MSFT_xAzurePackRelyingParty) | [repo](https://github.com/PowerShell/xAzurePack)
dsc_xazurepackresourceprovider | [xAzurePackResourceProvider](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzurePack/DSCResources/MSFT_xAzurePackResourceProvider) | [repo](https://github.com/PowerShell/xAzurePack)
dsc_xazurepacksetup | [xAzurePackSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzurePack/DSCResources/MSFT_xAzurePackSetup) | [repo](https://github.com/PowerShell/xAzurePack)
dsc_xazurepackupdate | [xAzurePackUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xAzurePack/DSCResources/MSFT_xAzurePackUpdate) | [repo](https://github.com/PowerShell/xAzurePack)

##### xBitlocker

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xblautobitlocker | [xBLAutoBitlocker](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xBitlocker/DSCResources/MSFT_xBLAutoBitlocker) | [repo](https://github.com/PowerShell/xBitlocker)
dsc_xblbitlocker | [xBLBitlocker](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xBitlocker/DSCResources/MSFT_xBLBitlocker) | [repo](https://github.com/PowerShell/xBitlocker)
dsc_xbltpm | [xBLTpm](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xBitlocker/DSCResources/MSFT_xBLTpm) | [repo](https://github.com/PowerShell/xBitlocker)

##### xCertificate

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xcertreq | [xCertReq](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xCertificate/DSCResources/MSFT_xCertReq) | [repo](https://github.com/PowerShell/xCertificate)
dsc_xcertificateexport | [xCertificateExport](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xCertificate/DSCResources/MSFT_xCertificateExport) | [repo](https://github.com/PowerShell/xCertificate)
dsc_xcertificateimport | [xCertificateImport](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xCertificate/DSCResources/MSFT_xCertificateImport) | [repo](https://github.com/PowerShell/xCertificate)
dsc_xpfximport | [xPfxImport](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xCertificate/DSCResources/MSFT_xPfxImport) | [repo](https://github.com/PowerShell/xCertificate)
dsc_xwaitforcertificateservices | [xWaitForCertificateServices](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xCertificate/DSCResources/MSFT_xWaitForCertificateServices) | [repo](https://github.com/PowerShell/xCertificate)

##### xComputerManagement

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xcomputer | [xComputer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xComputerManagement/DSCResources/MSFT_xComputer) | [repo](https://github.com/PowerShell/xComputerManagement)
dsc_xofflinedomainjoin | [xOfflineDomainJoin](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xComputerManagement/DSCResources/MSFT_xOfflineDomainJoin) | [repo](https://github.com/PowerShell/xComputerManagement)
dsc_xpowerplan | [xPowerPlan](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xComputerManagement/DSCResources/MSFT_xPowerPlan) | [repo](https://github.com/PowerShell/xComputerManagement)
dsc_xscheduledtask | [xScheduledTask](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xComputerManagement/DSCResources/MSFT_xScheduledTask) | [repo](https://github.com/PowerShell/xComputerManagement)
dsc_xvirtualmemory | [xVirtualMemory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xComputerManagement/DSCResources/MSFT_xVirtualMemory) | [repo](https://github.com/PowerShell/xComputerManagement)

##### xCredSSP

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xcredssp | [xCredSSP](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xCredSSP/DSCResources/MSFT_xCredSSP) | [repo](https://github.com/PowerShell/xCredSSP)

##### xDFS

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xdfsnamespacefolder | [xDFSNamespaceFolder](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDFS/DSCResources/MSFT_xDFSNamespaceFolder) | [repo](https://github.com/PowerShell/xDFS)
dsc_xdfsnamespaceroot | [xDFSNamespaceRoot](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDFS/DSCResources/MSFT_xDFSNamespaceRoot) | [repo](https://github.com/PowerShell/xDFS)
dsc_xdfsnamespaceserverconfiguration | [xDFSNamespaceServerConfiguration](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDFS/DSCResources/MSFT_xDFSNamespaceServerConfiguration) | [repo](https://github.com/PowerShell/xDFS)
dsc_xdfsreplicationgroup | [xDFSReplicationGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDFS/DSCResources/MSFT_xDFSReplicationGroup) | [repo](https://github.com/PowerShell/xDFS)
dsc_xdfsreplicationgroupconnection | [xDFSReplicationGroupConnection](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDFS/DSCResources/MSFT_xDFSReplicationGroupConnection) | [repo](https://github.com/PowerShell/xDFS)
dsc_xdfsreplicationgroupfolder | [xDFSReplicationGroupFolder](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDFS/DSCResources/MSFT_xDFSReplicationGroupFolder) | [repo](https://github.com/PowerShell/xDFS)
dsc_xdfsreplicationgroupmembership | [xDFSReplicationGroupMembership](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDFS/DSCResources/MSFT_xDFSReplicationGroupMembership) | [repo](https://github.com/PowerShell/xDFS)

##### xDatabase

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xdbpackage | [xDBPackage](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDatabase/DSCResources/MSFT_xDBPackage) | [repo](https://github.com/PowerShell/xDatabase)
dsc_xdatabase | [xDatabase](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDatabase/DSCResources/MSFT_xDatabase) | [repo](https://github.com/PowerShell/xDatabase)
dsc_xdatabaselogin | [xDatabaseLogin](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDatabase/DSCResources/MSFT_xDatabaseLogin) | [repo](https://github.com/PowerShell/xDatabase)
dsc_xdatabaseserver | [xDatabaseServer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDatabase/DSCResources/MSFT_xDatabaseServer) | [repo](https://github.com/PowerShell/xDatabase)

##### xDefender

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xmppreference | [xMpPreference](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDefender/DSCResources/MSFT_xMpPreference) | [repo](https://github.com/PowerShell/xDefender)

##### xDhcpServer

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xdhcpserverauthorization | [xDhcpServerAuthorization](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDhcpServer/DSCResources/MSFT_xDhcpServerAuthorization) | [repo](https://github.com/PowerShell/xDhcpServer)
dsc_xdhcpserverclass | [xDhcpServerClass](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDhcpServer/DSCResources/MSFT_xDhcpServerClass) | [repo](https://github.com/PowerShell/xDhcpServer)
dsc_xdhcpserveroption | [xDhcpServerOption](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDhcpServer/DSCResources/MSFT_xDhcpServerOption) | [repo](https://github.com/PowerShell/xDhcpServer)
dsc_xdhcpserverreservation | [xDhcpServerReservation](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDhcpServer/DSCResources/MSFT_xDhcpServerReservation) | [repo](https://github.com/PowerShell/xDhcpServer)
dsc_xdhcpserverscope | [xDhcpServerScope](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDhcpServer/DSCResources/MSFT_xDhcpServerScope) | [repo](https://github.com/PowerShell/xDhcpServer)

##### xDismFeature

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xdismfeature | [xDismFeature](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDismFeature/DSCResources/MSFT_xDismFeature) | [repo](https://github.com/PowerShell/xDismFeature)

##### xDnsServer

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xdnsarecord | [xDnsARecord](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDnsServer/DSCResources/MSFT_xDnsARecord) | [repo](https://github.com/PowerShell/xDnsServer)
dsc_xdnsrecord | [xDnsRecord](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDnsServer/DSCResources/MSFT_xDnsRecord) | [repo](https://github.com/PowerShell/xDnsServer)
dsc_xdnsserveradzone | [xDnsServerADZone](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDnsServer/DSCResources/MSFT_xDnsServerADZone) | [repo](https://github.com/PowerShell/xDnsServer)
dsc_xdnsserverforwarder | [xDnsServerForwarder](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDnsServer/DSCResources/MSFT_xDnsServerForwarder) | [repo](https://github.com/PowerShell/xDnsServer)
dsc_xdnsserverprimaryzone | [xDnsServerPrimaryZone](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDnsServer/DSCResources/MSFT_xDnsServerPrimaryZone) | [repo](https://github.com/PowerShell/xDnsServer)
dsc_xdnsserversecondaryzone | [xDnsServerSecondaryZone](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDnsServer/DSCResources/MSFT_xDnsServerSecondaryZone) | [repo](https://github.com/PowerShell/xDnsServer)
dsc_xdnsserversetting | [xDnsServerSetting](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDnsServer/DSCResources/MSFT_xDnsServerSetting) | [repo](https://github.com/PowerShell/xDnsServer)
dsc_xdnsserverzonetransfer | [xDnsServerZoneTransfer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xDnsServer/DSCResources/MSFT_xDnsServerZoneTransfer) | [repo](https://github.com/PowerShell/xDnsServer)

##### xExchange

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xexchactivesyncvirtualdirectory | [xExchActiveSyncVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchActiveSyncVirtualDirectory) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchantimalwarescanning | [xExchAntiMalwareScanning](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchAntiMalwareScanning) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchautomountpoint | [xExchAutoMountPoint](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchAutoMountPoint) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchautodiscovervirtualdirectory | [xExchAutodiscoverVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchAutodiscoverVirtualDirectory) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchclientaccessserver | [xExchClientAccessServer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchClientAccessServer) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchdatabaseavailabilitygroup | [xExchDatabaseAvailabilityGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchDatabaseAvailabilityGroup) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchdatabaseavailabilitygroupmember | [xExchDatabaseAvailabilityGroupMember](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchDatabaseAvailabilityGroupMember) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchdatabaseavailabilitygroupnetwork | [xExchDatabaseAvailabilityGroupNetwork](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchDatabaseAvailabilityGroupNetwork) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchecpvirtualdirectory | [xExchEcpVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchEcpVirtualDirectory) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexcheventloglevel | [xExchEventLogLevel](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchEventLogLevel) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchexchangecertificate | [xExchExchangeCertificate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchExchangeCertificate) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchexchangeserver | [xExchExchangeServer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchExchangeServer) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchimapsettings | [xExchImapSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchImapSettings) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchinstall | [xExchInstall](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchInstall) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchjetstress | [xExchJetstress](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchJetstress) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchjetstresscleanup | [xExchJetstressCleanup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchJetstressCleanup) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchmailboxdatabase | [xExchMailboxDatabase](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchMailboxDatabase) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchmailboxdatabasecopy | [xExchMailboxDatabaseCopy](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchMailboxDatabaseCopy) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchmailboxserver | [xExchMailboxServer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchMailboxServer) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchmailboxtransportservice | [xExchMailboxTransportService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchMailboxTransportService) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchmaintenancemode | [xExchMaintenanceMode](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchMaintenanceMode) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchmapivirtualdirectory | [xExchMapiVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchMapiVirtualDirectory) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchoabvirtualdirectory | [xExchOabVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchOabVirtualDirectory) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchoutlookanywhere | [xExchOutlookAnywhere](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchOutlookAnywhere) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchowavirtualdirectory | [xExchOwaVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchOwaVirtualDirectory) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchpopsettings | [xExchPopSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchPopSettings) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchpowershellvirtualdirectory | [xExchPowerShellVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchPowershellVirtualDirectory) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchreceiveconnector | [xExchReceiveConnector](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchReceiveConnector) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchtransportservice | [xExchTransportService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchTransportService) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchumcallroutersettings | [xExchUMCallRouterSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchUMCallRouterSettings) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchumservice | [xExchUMService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchUMService) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchwaitforadprep | [xExchWaitForADPrep](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchWaitForADPrep) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchwaitfordag | [xExchWaitForDAG](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchWaitForDAG) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchwaitformailboxdatabase | [xExchWaitForMailboxDatabase](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchWaitForMailboxDatabase) | [repo](https://github.com/PowerShell/xExchange)
dsc_xexchwebservicesvirtualdirectory | [xExchWebServicesVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xExchange/DSCResources/MSFT_xExchWebServicesVirtualDirectory) | [repo](https://github.com/PowerShell/xExchange)

##### xFailOverCluster

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xcluster | [xCluster](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xFailOverCluster/DSCResources/MSFT_xCluster) | [repo](https://github.com/PowerShell/xFailOverCluster)
dsc_xclusterdisk | [xClusterDisk](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xFailOverCluster/DSCResources/MSFT_xClusterDisk) | [repo](https://github.com/PowerShell/xFailOverCluster)
dsc_xclusternetwork | [xClusterNetwork](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xFailOverCluster/DSCResources/MSFT_xClusterNetwork) | [repo](https://github.com/PowerShell/xFailOverCluster)
dsc_xclusterpreferredowner | [xClusterPreferredOwner](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xFailOverCluster/DSCResources/MSFT_xClusterPreferredOwner) | [repo](https://github.com/PowerShell/xFailOverCluster)
dsc_xclusterquorum | [xClusterQuorum](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xFailOverCluster/DSCResources/MSFT_xClusterQuorum) | [repo](https://github.com/PowerShell/xFailOverCluster)
dsc_xwaitforcluster | [xWaitForCluster](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xFailOverCluster/DSCResources/MSFT_xWaitForCluster) | [repo](https://github.com/PowerShell/xFailOverCluster)

##### xHyper-V

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xvhd | [xVHD](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVHD) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvmdvddrive | [xVMDvdDrive](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVMDvdDrive) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvmharddiskdrive | [xVMHardDiskDrive](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVMHardDiskDrive) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvmhost | [xVMHost](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVMHost) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvmhyperv | [xVMHyperV](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVMHyperV) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvmnetworkadapter | [xVMNetworkAdapter](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVMNetworkAdapter) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvmprocessor | [xVMProcessor](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVMProcessor) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvmscsicontroller | [xVMScsiController](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVMScsiController) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvmswitch | [xVMSwitch](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVMSwitch) | [repo](https://github.com/PowerShell/xHyper-V)
dsc_xvhdfile | [xVhdFile](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xHyper-V/DSCResources/MSFT_xVhdFileDirectory) | [repo](https://github.com/PowerShell/xHyper-V)

##### xInternetExplorerHomePage

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xinternetexplorerhomepage | [xInternetExplorerHomePage](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xInternetExplorerHomePage/DSCResources/xInternetExplorerHomePage) | [repo](https://github.com/PowerShell/xInternetExplorerHomePage)

##### xJea

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xjeaendpoint | [xJeaEndPoint](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xJea/DSCResources/MSFT_xJeaEndpoint) | [repo](https://github.com/PowerShell/xJea)
dsc_xjeatoolkit | [xJeaToolKit](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xJea/DSCResources/MSFT_xJeaToolkit) | [repo](https://github.com/PowerShell/xJea)

##### xMySql

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xmysqldatabase | [xMySqlDatabase](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xMySql/DscResources/MSFT_xMySqlDatabase) | [repo](https://github.com/PowerShell/xMySql)
dsc_xmysqlgrant | [xMySqlGrant](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xMySql/DscResources/MSFT_xMySqlGrant) | [repo](https://github.com/PowerShell/xMySql)
dsc_xmysqlserver | [xMySqlServer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xMySql/DscResources/MSFT_xMySqlServer) | [repo](https://github.com/PowerShell/xMySql)
dsc_xmysqluser | [xMySqlUser](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xMySql/DscResources/MSFT_xMySqlUser) | [repo](https://github.com/PowerShell/xMySql)

##### xNetworking

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xdnsserveraddress | [xDNSServerAddress](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xDNSServerAddress) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xdefaultgatewayaddress | [xDefaultGatewayAddress](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xDefaultGatewayAddress) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xdhcpclient | [xDHCPClient](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xDhcpClient) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xdnsclientglobalsetting | [xDnsClientGlobalSetting](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xDnsClientGlobalSetting) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xdnsconnectionsuffix | [xDnsConnectionSuffix](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xDnsConnectionSuffix) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xfirewall | [xFirewall](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xFirewall) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xfirewallprofile | [xFirewallProfile](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xFirewallProfile) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xhostsfile | [xHostsFile](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xHostsFile) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xipaddress | [xIPAddress](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xIPAddress) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xipaddressoption | [xIPAddressOption](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xIPAddressOption) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetadapteradvancedproperty | [xNetAdapterAdvancedProperty](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetAdapterAdvancedProperty) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetadapterbinding | [xNetAdapterBinding](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetAdapterBinding) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetadapterlso | [xNetAdapterLso](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetAdapterLso) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetadaptername | [xNetAdapterName](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetAdapterName) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetadapterrdma | [xNetAdapterRDMA](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetAdapterRDMA) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetadapterrsc | [xNetAdapterRsc](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetAdapterRsc) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetadapterrss | [xNetAdapterRss](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetAdapterRss) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetbios | [xNetBIOS](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetBIOS) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetconnectionprofile | [xNetConnectionProfile](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetConnectionProfile) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetworkteam | [xNetworkTeam](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetworkTeam) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xnetworkteaminterface | [xNetworkTeamInterface](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xNetworkTeamInterface) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xproxysettings | [xProxySettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xProxySettings) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xroute | [xRoute](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xRoute) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xweakhostreceive | [xWeakHostReceive](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xWeakHostReceive) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xweakhostsend | [xWeakHostSend](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xWeakHostSend) | [repo](https://github.com/PowerShell/xNetworking)
dsc_xwinssetting | [xWINSSetting](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xNetworking/DSCResources/MSFT_xWinsSetting) | [repo](https://github.com/PowerShell/xNetworking)

##### xPSDesiredStateConfiguration

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xarchive | [xArchive](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xArchive) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xdscwebservice | [xDSCWebService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xDSCWebService) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xenvironment | [xEnvironment](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xEnvironmentResource) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xgroup | [xGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xGroupResource) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xmsipackage | [xMsiPackage](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xMsiPackage) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xpsendpoint | [xPSEndpoint](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xPSSessionConfiguration) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xpackage | [xPackage](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xPackageResource) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xregistry | [xRegistry](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xRegistryResource) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xremotefile | [xRemoteFile](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xRemoteFile) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xscript | [xScript](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xScriptResource) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xservice | [xService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xServiceResource) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xuser | [xUser](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xUserResource) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xwindowsfeature | [xWindowsFeature](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xWindowsFeature) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xwindowsoptionalfeature | [xWindowsOptionalFeature](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xWindowsOptionalFeature) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xwindowspackagecab | [xWindowsPackageCab](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xWindowsPackageCab) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)
dsc_xwindowsprocess | [xWindowsProcess](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPSDesiredStateConfiguration/DSCResources/MSFT_xWindowsProcess) | [repo](https://github.com/PowerShell/xPSDesiredStateConfiguration)

##### xPendingReboot

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xpendingreboot | [xPendingReboot](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPendingReboot/DSCResources/MSFT_xPendingReboot) | [repo](https://github.com/PowerShell/xPendingReboot)

##### xPowerShellExecutionPolicy

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xpowershellexecutionpolicy | [xPowerShellExecutionPolicy](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xPowerShellExecutionPolicy/DSCResources/MSFT_xPowerShellExecutionPolicy) | [repo](https://github.com/PowerShell/xPowerShellExecutionPolicy)

##### xRemoteDesktopAdmin

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xremotedesktopadmin | [xRemoteDesktopAdmin](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xRemoteDesktopAdmin/DSCResources/xRemoteDesktopAdmin) | [repo](https://github.com/PowerShell/xRemoteDesktopAdmin)

##### xRemoteDesktopSessionHost

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xrdremoteapp | [xRDRemoteApp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xRemoteDesktopSessionHost/DSCResources/MSFT_xRDRemoteApp) | [repo](https://github.com/PowerShell/xRemoteDesktopSessionHost)
dsc_xrdsessioncollection | [xRDSessionCollection](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xRemoteDesktopSessionHost/DSCResources/MSFT_xRDSessionCollection) | [repo](https://github.com/PowerShell/xRemoteDesktopSessionHost)
dsc_xrdsessioncollectionconfiguration | [xRDSessionCollectionConfiguration](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xRemoteDesktopSessionHost/DSCResources/MSFT_xRDSessionCollectionConfiguration) | [repo](https://github.com/PowerShell/xRemoteDesktopSessionHost)
dsc_xrdsessiondeployment | [xRDSessionDeployment](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xRemoteDesktopSessionHost/DSCResources/MSFT_xRDSessionDeployment) | [repo](https://github.com/PowerShell/xRemoteDesktopSessionHost)

##### xRobocopy

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xrobocopy | [xRobocopy](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xRobocopy/DSCResources/MSFT_xRobocopy) | [repo](https://github.com/PowerShell/xRobocopy)

##### xSCDPM

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xscdpmconsolesetup | [xSCDPMConsoleSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCDPM/DSCResources/MSFT_xSCDPMConsoleSetup) | [repo](https://github.com/PowerShell/xSCDPM)
dsc_xscdpmdatabaseserversetup | [xSCDPMDatabaseServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCDPM/DSCResources/MSFT_xSCDPMDatabaseServerSetup) | [repo](https://github.com/PowerShell/xSCDPM)
dsc_xscdpmserversetup | [xSCDPMServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCDPM/DSCResources/MSFT_xSCDPMServerSetup) | [repo](https://github.com/PowerShell/xSCDPM)

##### xSCOM

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xscomadmin | [xSCOMAdmin](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMAdmin) | [repo](https://github.com/PowerShell/xSCOM)
dsc_xscomconsolesetup | [xSCOMConsoleSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMConsoleSetup) | [repo](https://github.com/PowerShell/xSCOM)
dsc_xscomconsoleupdate | [xSCOMConsoleUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMConsoleUpdate) | [repo](https://github.com/PowerShell/xSCOM)
dsc_xscommanagementpack | [xSCOMManagementPack](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMManagementPack) | [repo](https://github.com/PowerShell/xSCOM)
dsc_xscommanagementserversetup | [xSCOMManagementServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMManagementServerSetup) | [repo](https://github.com/PowerShell/xSCOM)
dsc_xscommanagementserverupdate | [xSCOMManagementServerUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMManagementServerUpdate) | [repo](https://github.com/PowerShell/xSCOM)
dsc_xscomreportingserversetup | [xSCOMReportingServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMReportingServerSetup) | [repo](https://github.com/PowerShell/xSCOM)
dsc_xscomwebconsoleserversetup | [xSCOMWebConsoleServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMWebConsoleServerSetup) | [repo](https://github.com/PowerShell/xSCOM)
dsc_xscomwebconsoleserverupdate | [xSCOMWebConsoleServerUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCOM/DSCResources/MSFT_xSCOMWebConsoleServerUpdate) | [repo](https://github.com/PowerShell/xSCOM)

##### xSCSMA

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xscsmapowershellsetup | [xSCSMAPowerShellSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSMA/DSCResources/MSFT_xSCSMAPowerShellSetup) | [repo](https://github.com/PowerShell/xSCSMA)
dsc_xscsmarunbookworkerserversetup | [xSCSMARunbookWorkerServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSMA/DSCResources/MSFT_xSCSMARunbookWorkerServerSetup) | [repo](https://github.com/PowerShell/xSCSMA)
dsc_xscsmawebserviceserversetup | [xSCSMAWebServiceServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSMA/DSCResources/MSFT_xSCSMAWebServiceServerSetup) | [repo](https://github.com/PowerShell/xSCSMA)
dsc_xsmacredential | [xSmaCredential](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSMA/DSCResources/MSFT_xSmaCredential) | [repo](https://github.com/PowerShell/xSCSMA)

##### xSCSPF

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xscspfserver | [xSCSPFServer](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSPF/DSCResources/MSFT_xSCSPFServer) | [repo](https://github.com/PowerShell/xSCSPF)
dsc_xscspfserversetup | [xSCSPFServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSPF/DSCResources/MSFT_xSCSPFServerSetup) | [repo](https://github.com/PowerShell/xSCSPF)
dsc_xscspfserverupdate | [xSCSPFServerUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSPF/DSCResources/MSFT_xSCSPFServerUpdate) | [repo](https://github.com/PowerShell/xSCSPF)
dsc_xscspfsetting | [xSCSPFSetting](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSPF/DSCResources/MSFT_xSCSPFSetting) | [repo](https://github.com/PowerShell/xSCSPF)
dsc_xscspfstamp | [xSCSPFStamp](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSPF/DSCResources/MSFT_xSCSPFStamp) | [repo](https://github.com/PowerShell/xSCSPF)

##### xSCSR

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xscsrserversetup | [xSCSRServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSR/DSCResources/MSFT_xSCSRServerSetup) | [repo](https://github.com/PowerShell/xSCSR)
dsc_xscsrserverupdate | [xSCSRServerUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCSR/DSCResources/MSFT_xSCSRServerUpdate) | [repo](https://github.com/PowerShell/xSCSR)

##### xSCVMM

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xscvmmadmin | [xSCVMMAdmin](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCVMM/DSCResources/MSFT_xSCVMMAdmin) | [repo](https://github.com/PowerShell/xSCVMM)
dsc_xscvmmconsolesetup | [xSCVMMConsoleSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCVMM/DSCResources/MSFT_xSCVMMConsoleSetup) | [repo](https://github.com/PowerShell/xSCVMM)
dsc_xscvmmconsoleupdate | [xSCVMMConsoleUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCVMM/DSCResources/MSFT_xSCVMMConsoleUpdate) | [repo](https://github.com/PowerShell/xSCVMM)
dsc_xscvmmmanagementserversetup | [xSCVMMManagementServerSetup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCVMM/DSCResources/MSFT_xSCVMMManagementServerSetup) | [repo](https://github.com/PowerShell/xSCVMM)
dsc_xscvmmmanagementserverupdate | [xSCVMMManagementServerUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSCVMM/DSCResources/MSFT_xSCVMMManagementServerUpdate) | [repo](https://github.com/PowerShell/xSCVMM)

##### xSmbShare

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xsmbshare | [xSmbShare](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSmbShare/DscResources/MSFT_xSmbShare) | [repo](https://github.com/PowerShell/xSmbShare)

##### xSqlPs

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xsqlalias | [xSqlAlias](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSqlPs/DSCResources/MSFT_xSqlAlias) | [repo](https://github.com/PowerShell/xSqlPs)
dsc_xsqlhaendpoint | [xSqlHAEndPoint](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSqlPs/DSCResources/MSFT_xSqlHAEndPoint) | [repo](https://github.com/PowerShell/xSqlPs)
dsc_xsqlhagroup | [xSqlHAGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSqlPs/DSCResources/MSFT_xSqlHAGroup) | [repo](https://github.com/PowerShell/xSqlPs)
dsc_xsqlhaservice | [xSqlHAService](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSqlPs/DSCResources/MSFT_xSqlHAService) | [repo](https://github.com/PowerShell/xSqlPs)
dsc_xsqlserverinstall | [xSqlServerInstall](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSqlPs/DSCResources/MSFT_xSqlServerInstall) | [repo](https://github.com/PowerShell/xSqlPs)
dsc_xwaitforsqlhagroup | [xWaitForSqlHAGroup](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xSqlPs/DSCResources/MSFT_xWaitForSqlHAGroup) | [repo](https://github.com/PowerShell/xSqlPs)

##### xTimeZone

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xtimezone | [xTimeZone](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xTimeZone/DSCResources/MSFT_xTimeZone) | [repo](https://github.com/PowerShell/xTimeZone)

##### xWebAdministration

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xiishandler | [xIisHandler](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xIIsHandler) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xiisfeaturedelegation | [xIisFeatureDelegation](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xIisFeatureDelegation) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xiislogging | [xIisLogging](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xIisLogging) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xiismimetypemapping | [xIisMimeTypeMapping](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xIisMimeTypeMapping) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xiismodule | [xIisModule](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xIisModule) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xsslsettings | [xSSLSettings](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xSSLSettings) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xwebapppool | [xWebAppPool](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xWebAppPool) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xwebapppooldefaults | [xWebAppPoolDefaults](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xWebAppPoolDefaults) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xwebapplication | [xWebApplication](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xWebApplication) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xwebconfigkeyvalue | [xWebConfigKeyValue](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xWebConfigKeyValue) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xwebsitedefaults | [xWebSiteDefaults](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xWebSiteDefaults) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xwebvirtualdirectory | [xWebVirtualDirectory](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xWebVirtualDirectory) | [repo](https://github.com/PowerShell/xWebAdministration)
dsc_xwebsite | [xWebsite](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebAdministration/DSCResources/MSFT_xWebsite) | [repo](https://github.com/PowerShell/xWebAdministration)

##### xWebDeploy

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xwebpackagedeploy | [xWebPackageDeploy](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWebDeploy/DSCResources/xWebPackageDeploy) | [repo](https://github.com/PowerShell/xWebDeploy)

##### xWinEventLog

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xwineventlog | [xWinEventLog](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWinEventLog/DSCResources/MSFT_xWinEventLog) | [repo](https://github.com/PowerShell/xWinEventLog)

##### xWindowsEventForwarding

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xwefcollector | [xWEFCollector](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWindowsEventForwarding/DSCResources/MSFT_xWEFCollector) | [repo](https://github.com/PowerShell/xWindowsEventForwarding)
dsc_xwefsubscription | [xWEFSubscription](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWindowsEventForwarding/DSCResources/MSFT_xWEFSubscription) | [repo](https://github.com/PowerShell/xWindowsEventForwarding)

##### xWindowsRestore

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xsystemrestore | [xSystemRestore](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWindowsRestore/DSCResources/xSystemRestore) | [repo](https://github.com/PowerShell/xWindowsRestore)
dsc_xsystemrestorepoint | [xSystemRestorePoint](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWindowsRestore/DSCResources/xSystemRestorePoint) | [repo](https://github.com/PowerShell/xWindowsRestore)

##### xWindowsUpdate

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xmicrosoftupdate | [xMicrosoftUpdate](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWindowsUpdate/DscResources/MSFT_xMicrosoftUpdate) | [repo](https://github.com/PowerShell/xWindowsUpdate)
dsc_xhotfix | [xHotfix](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWindowsUpdate/DscResources/MSFT_xWindowsUpdate) | [repo](https://github.com/PowerShell/xWindowsUpdate)
dsc_xwindowsupdateagent | [xWindowsUpdateAgent](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWindowsUpdate/DscResources/MSFT_xWindowsUpdateAgent) | [repo](https://github.com/PowerShell/xWindowsUpdate)

##### xWordPress

Puppet Type | DSC Resource | Github Repo
----------- | ----------------- | -----
dsc_xwordpresssite | [xWordPressSite](https://github.com/puppetlabs/puppetlabs-dsc/tree/master/lib/puppet_x/dsc_resources/xWordPress/DscResources/MSFT_xWordPressSite) | [repo](https://github.com/PowerShell/xWordPress)

