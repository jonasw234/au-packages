$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1598/Suwayomi-Server-v1.1.1-r1598-windows-x86.msi'
    checksum       = '3018be752999efd6a5cf7973416e021af18e8daef87c5a358df75ba391007a74'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1598/Suwayomi-Server-v1.1.1-r1598-windows-x64.msi'
    checksum64     = '23a899d6e3ae6299137270acd99e7d5a7ea440402987354e6f6e0c24263ea27e'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
