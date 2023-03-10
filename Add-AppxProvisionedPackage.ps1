
名称
    Add-AppxProvisionedPackage
    
摘要
    Adds an app package (.appx) that will install for each new user to a Windows image.
    
    
    Example 1: Add an app package to the running operating system
    
    PS C:\>Add-AppxProvisionedPackage -Online –FolderPath "c:\Appx"
    
    This command adds the app package, dependency packages, and license file from the c:\Appx folder to the running Windows operating system. 
    The package will be installed for the current user and any new user account created on the computer.
    
    
    Example 2: Add an app package an operating system image
    
    PS C:\>Add-AppxProvisionedPackage –Path c:\offline –PackagePath c:\Appx\myPackage.appx –DependencyPath c:\Appx\dependency1\dependencyPacka
    ge.appx –LicensePath c:\Appx\myLicense.xml
    
    This command adds the app package, myPackage.appx, to the Windows image mounted to c:\offline.
    
    



