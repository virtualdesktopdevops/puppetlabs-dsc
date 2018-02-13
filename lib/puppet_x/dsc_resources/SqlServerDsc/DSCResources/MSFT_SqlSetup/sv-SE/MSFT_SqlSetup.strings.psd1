# Swedish localized resources for SqlSetup

ConvertFrom-StringData @'
    UsingPath = Använder sökväg '{0}'.
    EvaluateReplicationFeature = Letar efter funktionen Replication ({0}).
    ReplicationFeatureFound = Replication funktionen hittad.
    ReplicationFeatureNotFound = Replication funktionen hittades inte.
    EvaluateDataQualityClientFeature = Letar efter Data Quality Client funktionen ({0}).
    DataQualityClientFeatureFound = Data Quality Client funktionen hittad.
    DataQualityClientFeatureNotFound = Data Quality Client funktionen hittades inte.
    EvaluateDataQualityServicesFeature = Letar efter Data Services Client funktionen ({0}).
    DataQualityServicesFeatureFound = Data Quality Services funktionen hittad.
    DataQualityServicesFeatureNotFound = Data Quality Services funktionen hittades inte.
    ClusterInstanceFound = Klustrad instans hittad.
    ClusterInstanceNotFound = Klustrad instans hittades inte.
    FailoverClusterResourceFound = En SQL Server klusterresurs hittad.
    FailoverClusterResourceNotFound = Kunde inte hitta en SQL Server klusteresurs för instans {0}.
    EvaluateDocumentationComponentsFeature = Letar efter Documentation Components funktionen ({0}).
    DocumentationComponentsFeatureFound = Documentation Components funktionen hittad.
    DocumentationComponentsFeatureNotFound = Documentation Components funktionen hittades inte.
    EvaluateDatabaseEngineFeature = Letar efter Database Engine funktionen.
    DatabaseEngineFeatureFound = Database Engine funktionen hittad.
    DatabaseEngineFeatureNotFound = Database Engine funktionen hittades inte.
    EvaluateFullTextFeature = Letar efter Full-text funktionen.
    FullTextFeatureFound = Full-text funktionen hittad.
    FullTextFeatureNotFound = Full-text funktionen hittades inte.
    EvaluateReportingServicesFeature = Letar efter Reporting Services funktionen.
    ReportingServicesFeatureFound = Reporting Services funktionen hittad.
    ReportingServicesFeatureNotFound = Reporting Services funktionen hittades inte.
    EvaluateAnalysisServicesFeature = Letar efter Analysis Services funktionen.
    AnalysisServicesFeatureFound = Analysis Services funktionen hittad.
    AnalysisServicesFeatureNotFound = Analysis Services funktionen hittades inte.
    EvaluateIntegrationServicesFeature = Letar efter Integration Services funktionen.
    IntegrationServicesFeatureFound = Integration Services funktionen hittad.
    IntegrationServicesFeatureNotFound = Integration Services funktionen hittades inte.
    EvaluateClientConnectivityToolsFeature = Letar efter Client Connectivity Tools funktionen ({0}).
    ClientConnectivityToolsFeatureFound = Client Connectivity Tools funktionen hittad.
    ClientConnectivityToolsFeatureNotFound = Client Connectivity Tools funktionen hittades inte.
    EvaluateClientConnectivityBackwardsCompatibilityToolsFeature = Letar efter Client Connectivity Backwards Compatibility Tools funktionen ({0}).
    ClientConnectivityBackwardsCompatibilityToolsFeatureFound = Client Connectivity Backwards Compatibility Tools funktionen hittad.
    ClientConnectivityBackwardsCompatibilityToolsFeatureNotFound = Client Connectivity Backwards Compatibility Tools funktionen hittades inte.
    EvaluateClientToolsSdkFeature = Letar efter Client Tools SDK funktionen ({0}).
    ClientToolsSdkFeatureFound = Client Tools SDK funktionen hittad.
    ClientToolsSdkFeatureNotFound = Client Tools SDK funktionen hittades inte.
    RobocopyIsCopying = Robocopy kopierar media från källan '{0}' till destinationen '{1}'.
    FeatureNotSupported = '{0}' är inte ett giltigt värde för egenskapen 'FEATURES'. Titta i hjälpdokumentationen för SQL Server för mer information.
    PathRequireClusterDriveFound = Hittade tilldelad parameter '{0}'. Adderar sökväg '{1}' till listan av sökvägar som kräver en klustrad enhet.
    FailoverClusterDiskMappingError = Kunde inte koppla den specifika sökvägen till en giltig klusterlagring. Enheter kopplade: {0}.
    FailoverClusterIPAddressNotValid = Kunde inte koppla den specifika IP-adressen, eller IP-adresser, till ett giltigt klusternätverk.
    AddingFirstSystemAdministratorSqlServer = Adderar användaren '{0}' från parametern 'PsDscRunAsCredential' som det första systemadminstratörskontot för SQL Server.
    AddingFirstSystemAdministratorAnalysisServices = Adderar användaren '{0}' från parametern 'PsDscRunAsCredential' som det första systemadminstratörskontot för Analysis Services.
    SetupArguments = Startar installationen med följande argument: {0}
    SetupExitMessage = Installationen avslutades med felkod '{0}'.
    SetupSuccessful = Installationen lyckades.
    SetupSuccessfulRebootRequired = Installationen lyckades, men en omstart krävs.
    SetupFailed = Vänligen titta i loggfilen 'Summary.txt' i sökvägen 'Setup Bootstrap\\Log'.
    Reboot = Startar om målnod.
    SuppressReboot = Förhindrar omstart av målnod.
    TestFailedAfterSet = Test-TargetResource retunerade falskt efter anropet till Set-TargetResource.
    FeaturesFound = Funktioner funna: {0}
    UnableToFindFeature = Kunde inte hitta funktion '{0}' bland som installerade funktionerna: '{1}'.
    EvaluatingClusterParameters = Klustrad installation, kontrollerar parametrar.
    ClusterParameterIsNotInDesiredState = {0} '{1}' är inte i önskat läge för detta kluster.
    RobocopyUsingUnbufferedIo = Robocopy använder sig av obuffrad I/O.
    RobocopyNotUsingUnbufferedIo = Obuffrad I/O kan inte användas på grund av versionen av Robocopy inte är kompatibel.
    RobocopyArguments = Robocopy startas med följande argument: {0}
    RobocopyErrorCopying = Robocopy rapporterade fel när filer kopierades. Felkod: {0}.
    RobocopyFailuresCopying = Robocopy rapporterade att fel uppstod när filer kopierades. Felkod: {0}.
    RobocopySuccessful = Robocopy lyckades kopiera filer till destinationen.
    RobocopyRemovedExtraFilesAtDestination = Robocopy fann extra filer på destinationen som inte finns i källan, dessa extra filer togs bort på destinationen.
    RobocopySuccessfulAndRemovedExtraFilesAtDestination = Robocopy lyckades kopiera filer till destinationen. Robocopy fann extra filer på destinationen som inte finns i källan, dessa extra filer togs bort på destinationen.
    RobocopyAllFilesPresent = Robocopy rapporterade att alla filer redan finns på destinationen.
    StartSetupProcess = Startade processen med id {0}, använder sig av sökvägen '{1}', och med en tidsgräns på {2} sekunder.
    EvaluateMasterDataServicesFeature = Letar efter Master Data Services (MDS) funktion ({0}).
    MasterDataServicesFeatureFound = Master Data Services (MDS) funktionen hittad.
    MasterDataServicesFeatureNotFound = Master Data Services (MDS) funktionen hittades inte.
'@
