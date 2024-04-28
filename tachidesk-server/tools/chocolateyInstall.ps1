$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1517/Suwayomi-Server-v1.0.0-r1517-windows-x86.msi'
    checksum       = '661cc9943a429f50af5fa2f2575ef85cf21bf8ce2f4568e05d41035ece8bf4a4'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1517/Suwayomi-Server-v1.0.0-r1517-windows-x64.msi'
    checksum64     = '39999729713c2c3e9b8f81e308151d19c1c0821edc59fa118ccf0c501a6ec01b'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
