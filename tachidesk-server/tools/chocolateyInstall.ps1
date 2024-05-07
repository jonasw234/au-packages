$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1522/Suwayomi-Server-v1.0.0-r1522-windows-x86.msi'
    checksum       = '27f95efb7c2bdfd858c9d1bb635f14b12b755b9aece243d70edd4d3ffc6d8e59'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1522/Suwayomi-Server-v1.0.0-r1522-windows-x64.msi'
    checksum64     = 'a01079a0c026fc0d6672c543ad8cf6d2b1c1dc0f68d0982b07c49c2cb87cf9ac'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
