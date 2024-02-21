$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v0.7.0-r1493/Suwayomi-Server-v0.7.0-r1493-windows-x86.msi'
    checksum       = ''
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v0.7.0-r1493/Suwayomi-Server-v0.7.0-r1493-windows-x64.msi'
    checksum64     = ''
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
