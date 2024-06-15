$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server/releases/download/v1.1.0/Suwayomi-Server-v1.1.0-r1532-windows-x86.msi'
    checksum       = '53ef70ce4a41a548807cb807d5de8d66ff447a24e30818a056afb7af2c52cdf0'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server/releases/download/v1.1.0/Suwayomi-Server-v1.1.0-r1532-windows-x64.msi'
    checksum64     = '92122f4d13f49348f88112fa6a20488145da7597fd469feaa23baac64cfdfc4b'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
