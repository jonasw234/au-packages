$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1618/Suwayomi-Server-v1.1.1-r1618-windows-x86.msi'
    checksum       = '068d51949f16e26a0310ba4af2165da6cc7d97418c38f8226aa1790ee5e7be42'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1618/Suwayomi-Server-v1.1.1-r1618-windows-x64.msi'
    checksum64     = '5bab28d38039922af9350db87f01307fb3fc84420171ef9ada082097b5580f2c'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
