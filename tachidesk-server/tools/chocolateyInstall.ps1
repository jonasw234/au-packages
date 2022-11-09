$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.6.5/Tachidesk-Server-v0.6.5-r1122-windows-x86.msi'
    checksum       = 'be05c88df93682d427bda713c47f9601cf9126fa61c0702bc22445ff41048df2'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.6.5/Tachidesk-Server-v0.6.5-r1122-windows-x64.msi'
    checksum64     = '0a5bfbc4ef1a22fd903adb3de4f81f893eeddd170b844b7f7d5d83af6c9462e1'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
