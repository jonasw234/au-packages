$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server/releases/download/v1.0.0/Suwayomi-Server-v1.0.0-r1498-windows-x86.msi'
    checksum       = '94991bc7bc61c7aa6a6c38eb0bc4ad18db859793889a5bb577a8412d8d3229aa'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server/releases/download/v1.0.0/Suwayomi-Server-v1.0.0-r1498-windows-x64.msi'
    checksum64     = '67ca65dcc3524a047dc41a4bcbf469dae624a084c7802d4276516d0f1824e4d3'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
