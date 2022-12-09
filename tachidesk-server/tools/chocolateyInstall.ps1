$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.6.6/Tachidesk-Server-v0.6.6-r1159-windows-x86.msi'
    checksum       = '3977344dbf901646584882e7003f9d324c0f22b66157b9f9b865f635ddfa9b7c'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.6.6/Tachidesk-Server-v0.6.6-r1159-windows-x64.msi'
    checksum64     = '6db49fb99e850bbcb4aa94a0977dea4cefad81a275ce5016e5d8b04059451432'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
