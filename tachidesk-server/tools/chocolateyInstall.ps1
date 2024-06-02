$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1524/Suwayomi-Server-v1.0.0-r1524-windows-x86.msi'
    checksum       = '047dfc096d015c30c42d758fbf0fed6f07ea7e10f455c90d40f49c6748d64c2c'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1524/Suwayomi-Server-v1.0.0-r1524-windows-x64.msi'
    checksum64     = '4cbe977c7674f390e11f959837ae6fbe5123d5c74dad670c36c1dc70a20e7a07'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
