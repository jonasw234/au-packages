$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.16.0/autopsy-4.16.0-32bit.msi'
    checksum       = '6f51a2528041b681e9fe30dbdb1c35df243077604facfc3c7e0546e4bed554bf'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.16.0/autopsy-4.16.0-64bit.msi'
    checksum64     = '2799ded6a37f1068bd9a53e8664cd8130b7cef761d59919fe6bcd6d248a396ea'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
