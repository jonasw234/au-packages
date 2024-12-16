$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v2.2.1/watchexec-2.2.1-x86_64-pc-windows-msvc.zip'
    checksum64     = '9ea95572765351e40799eccf7eedb3b38d4f0f419d3faac7622daaa7931c918d'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
