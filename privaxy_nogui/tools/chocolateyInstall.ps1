$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'zip'
    url64bit       = 'https://github.com/Barre/privaxy/releases/download/v0.5.2/privaxy_nogui-x86_64-pc-windows-msvc.zip'
    checksum64     = 'e448c3ef0fc0e85de6debf43f4d36a126a947e891b40b8ed65cbf22daa694118'
    checksumType64 = 'sha256'
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}

Install-ChocolateyZIPPackage @packageArgs
