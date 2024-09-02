$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1566/Suwayomi-Server-v1.1.1-r1566-windows-x86.msi'
    checksum       = '158e05e4482d0e37c365612c61306d3e813c1b5fadeeab398eda41eae7823d01'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1566/Suwayomi-Server-v1.1.1-r1566-windows-x64.msi'
    checksum64     = 'b3526df162cbe82a17fb61547eda78dcbb7dfd14870ba7c744d8abfad135c27d'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
