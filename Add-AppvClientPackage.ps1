
名称
    Add-AppvClientPackage
    
摘要
    Adds a package to a computer running the App-V client.
    
    
    Example 1: Add a package to the client
    
    PS C:\> Add-AppvClientPackage -Path "http://MyServer/content/package.APPV"
    
    This command adds a new package to the client computer. If the package is a different version of an already existing package, the App-V ag
    ent adds this new version, but does not modify any existing versions. Since no computer policy is provided, the package receives the defau
    lt computer policy.
    
    
    Example 2: Add a package with a configuration file
    
    PS C:\> Add-AppvClientPackage -Path "http://MyServer/content/package.appv" -DynamicDeploymentConfiguration "C:\MyConfigfiles\DynamicDeploy
    mentConfig.xml"
    
    This command adds a package with a Dynamic Deployment Configuration file.
    
    
    Example 3: Add a package to the client and store the result
    
    PS C:\> $Package = Add-AppvClientPackage -Path "http://MyServer/content/package.APPV"
    
    This command adds a new package to the client and assigns the resulting AppvClientPackage object to the variable $Package.
    
    



