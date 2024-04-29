$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1519/Suwayomi-Server-v1.0.0-r1519-windows-x86.msi'
    checksum       = '4051a5c1b203cc373ddba3c892f97b26f2bd751c491e79a01bcfca1e5db76408'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1519/Suwayomi-Server-v1.0.0-r1519-windows-x64.msi'
    checksum64     = '7a4e93441483b9fcf928e700c6df3d9bd52632e38b8f562efb1b296fe7c19075'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
