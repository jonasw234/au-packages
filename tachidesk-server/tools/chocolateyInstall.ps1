$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1595/Suwayomi-Server-v1.1.1-r1595-windows-x86.msi'
    checksum       = '8bfd55c6da942b9ca463e3bc688379821367e15c410191e53b12f43e9adc34d0'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1595/Suwayomi-Server-v1.1.1-r1595-windows-x64.msi'
    checksum64     = '7c743c4f9e03dce4850e31f7c5a140addbf54a9183acebb381afd10945515712'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
