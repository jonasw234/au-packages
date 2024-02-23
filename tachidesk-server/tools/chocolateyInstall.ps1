$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v0.7.0-r1494/Suwayomi-Server-v0.7.0-r1494-windows-x86.msi'
    checksum       = '5d444dc84102a28346ab45d9ce9cf512aada69722438384fb95a404b4cd20f7a'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v0.7.0-r1494/Suwayomi-Server-v0.7.0-r1494-windows-x64.msi'
    checksum64     = '4a2aba39b024671aca4917dcf6f180b63d64037ec065f9eab51e2f3eb56a6d0e'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
