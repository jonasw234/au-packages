$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1600/Suwayomi-Server-v1.1.1-r1600-windows-x86.msi'
    checksum       = 'f5c29cf6f5ef6136d48dd1a42736f1b17dc5ed197bee8f4c2c3406b014fc4014'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1600/Suwayomi-Server-v1.1.1-r1600-windows-x64.msi'
    checksum64     = 'fda49c7a509ff7b1a94d4d29177e1add1507052efa1ff3d92308c96ad18f6373'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
