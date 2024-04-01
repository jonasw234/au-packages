$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1510/Suwayomi-Server-v1.0.0-r1510-windows-x86.msi'
    checksum       = '7edc7bd93d5b94766964e759dacfe8d6d29b6fc26ccd5eb212f1c67a7f97b0d3'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1510/Suwayomi-Server-v1.0.0-r1510-windows-x64.msi'
    checksum64     = '0967366f1b4b24f18b291383ea3db15532b1f4d4abdf4b8fc71cf13c8ab3439b'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
