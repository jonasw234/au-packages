$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1531/Suwayomi-Server-v1.0.0-r1531-windows-x86.msi'
    checksum       = '8ba5a4623fcaae591e832dbd71caf938771cc70e6b0716b433360258f60b0fbb'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1531/Suwayomi-Server-v1.0.0-r1531-windows-x64.msi'
    checksum64     = 'd3ef19d30754b2259f3e8c6ae887b6beaa80bcabb8007c0ea0961f6284c1f8b8'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
