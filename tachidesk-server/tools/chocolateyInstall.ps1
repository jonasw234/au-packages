$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1523/Suwayomi-Server-v1.0.0-r1523-windows-x86.msi'
    checksum       = 'be3473b2b4e35e13b74e07c4a845a759a866bb40bea698b08f4b6c1bb3a53e97'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1523/Suwayomi-Server-v1.0.0-r1523-windows-x64.msi'
    checksum64     = 'c0e66e75d710ac70393bd497ff647b03637fda5e8d612d349843a0130b28f0cb'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
