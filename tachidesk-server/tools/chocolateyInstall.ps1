$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1535/Suwayomi-Server-v1.1.1-r1535-windows-x86.msi'
    checksum       = 'c28e9806ce7dfa0fe355c76102305936c77269fab6628878523d59ce6aa5f27c'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1535/Suwayomi-Server-v1.1.1-r1535-windows-x64.msi'
    checksum64     = '5bcf205a599537e5e8ba845de37a7d45a9c64214170ba3391b81b3da6b5ea49d'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
