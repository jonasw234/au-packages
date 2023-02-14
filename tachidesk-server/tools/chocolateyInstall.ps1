$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.7.0/Tachidesk-Server-v0.7.0-r1197-windows-x86.msi'
    checksum       = '4926cb942a63a2cebec362b3695af76b57e34c13c6d4cbc5130ab0e58be9a3e8'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.7.0/Tachidesk-Server-v0.7.0-r1197-windows-x64.msi'
    checksum64     = '8a247701e4c5ae703c1677268160f519237b787d341463bdcfdf0107e9acd2cf'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
