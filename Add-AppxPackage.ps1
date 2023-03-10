
名称
    Add-AppxPackage
    
摘要
    Adds a signed app package to a user account.
    
    
    Example 1: Add an app package
    
    PS C:\> Add-AppxPackage -Path "C:\Users\user1\Desktop\MyApp.appx" -DependencyPath "C:\Users\user1\Desktop\winjs.appx"
    
    This command adds an app package that the package contains.
    Example 2: Add a disabled app package in development mode
    
    PS C:\> $ManifestPath = (Get-AppxPackage -Name "*WindowsCalculator*").InstallLocation + "\Appxmanifest.xml"
    PS C:\> Add-AppxPackage -Path $ManifestPath -Register -DisableDevelopmentMode
    
    This command gets the full path of the package manifest file of an installed Windows Store app, and then registers that package. You can u
    se DisableDevelopmentMode to register an application that is staged by the StagePackageAsync API, has been disabled, or has become corrupt
    ed during testing.
    Example 3: Add an app along with its optional packages
    
    PS C:\> Add-AppxPackage -Path "C:\Users\user1\Desktop\MyApp.appxbundle" -ExternalPackages "C:\Users\user1\Desktop\optionalpackage1.appx","
    C:\Users\user1\Desktop\optionalpackage2.appxbundle"
    
    PS C:\> Add-AppxPackage -Path "C:\Users\user1\Desktop\MyApp.appxbundle" -OptionalPackages "29270sandstorm.OptionalPackage1_gah1vdar1nn7a"
    
    This command adds an app package along with its optional packages. It is an atomic operation which means that if the app or its optional p
    ackages fail to install, the deployment operation will be aborted
    Example 4: Install only the required section of a streaming app
    
    PS C:\> Add-AppxPackage -Path "C:\Users\user1\Desktop\MyApp.appxbundle" -RequiredContentGroupOnly
    
    This command adds an app package but only installs the required section of a streaming app. Calling this command again without the Require
    dContentGroupOnly flag proceeds to install the rest of the application in the order defined by the AppxContentGroupMap.xml



