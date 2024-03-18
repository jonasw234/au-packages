$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1502/Suwayomi-Server-v1.0.0-r1502-windows-x86.msi'
    checksum       = '51bc2c40a240fa030607b0bf633b6a91af380b4f61e32fb912e04b88e5710738'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1502/Suwayomi-Server-v1.0.0-r1502-windows-x64.msi'
    checksum64     = 'cf3e4f6cdb1f5a2854fd29383781a62456fdc888b97e156e4abf2b853b2eb9ad'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
