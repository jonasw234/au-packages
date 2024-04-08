$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1514/Suwayomi-Server-v1.0.0-r1514-windows-x86.msi'
    checksum       = '5e52d97af415b3f3f3e4eb8a444e1acf416be1edb6ce9dd1c123bfba40234b1a'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1514/Suwayomi-Server-v1.0.0-r1514-windows-x64.msi'
    checksum64     = '9553c17a462a0034246cdc1de95d08763c7b5d1dc81aae7a679014de6c506f38'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
