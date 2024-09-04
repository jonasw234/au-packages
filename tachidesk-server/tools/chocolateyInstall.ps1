$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1586/Suwayomi-Server-v1.1.1-r1586-windows-x86.msi'
    checksum       = '0e98f4f6cd8d49a3bd8632a69bc6fde425bc4cb6106e8bce67ad5d4efeacaf21'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1586/Suwayomi-Server-v1.1.1-r1586-windows-x64.msi'
    checksum64     = '2dbf3e4bcaf0e0a0d1f788bb83cac61574db7ab7c7d68072b5d93a06f9f4dc31'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
