$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1548/Suwayomi-Server-v1.1.1-r1548-windows-x86.msi'
    checksum       = '169720f407577874347e84f7777655030e26720f9b5097757145526d7e5fc423'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1548/Suwayomi-Server-v1.1.1-r1548-windows-x64.msi'
    checksum64     = '3d2c81fb21b76b918c321d29f92866bd97958cf925ea841728e6ee4764bf7eba'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
