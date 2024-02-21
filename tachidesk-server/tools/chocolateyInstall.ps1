$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v0.7.0-r1493/Suwayomi-Server-v0.7.0-r1493-windows-x86.msi'
    checksum       = '9076625d856028c3ef908efd960afd14b4954e93f42534fb02b3df4008697a6f'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v0.7.0-r1493/Suwayomi-Server-v0.7.0-r1493-windows-x64.msi'
    checksum64     = '78989959b7ddb4eb09af9bd22921baee46edb159950aba9155149d263892565b'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
