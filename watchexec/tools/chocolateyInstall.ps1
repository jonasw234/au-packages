$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.22.3/watchexec-1.22.3-x86_64-pc-windows-msvc.zip'
    checksum64     = '3175f56cc8aca407e878938f015ed4d1b6e93f185b5f6c4c0a4a7feb987fd152'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
