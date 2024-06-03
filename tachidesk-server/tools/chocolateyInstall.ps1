$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1527/Suwayomi-Server-v1.0.0-r1527-windows-x86.msi'
    checksum       = '9c037d1816905e30f5c309dc3f55b71a1bdbe36fa02a7e160b12c105ff06b850'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1527/Suwayomi-Server-v1.0.0-r1527-windows-x64.msi'
    checksum64     = 'f520aed9543a11694823673e1b138f7c990db0d7d96b12f4c23993d1f8bd0e7f'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
