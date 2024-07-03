$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v2.1.2/watchexec-2.1.2-x86_64-pc-windows-msvc.zip'
    checksum64     = '458b4b98be3c37d36a33fd9621a18b98c903deed3bc0585e5bb3589e4fd58f6f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
