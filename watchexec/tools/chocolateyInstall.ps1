$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.18.8/watchexec-1.18.8-x86_64-pc-windows-msvc.zip'
    checksum64     = '64a226f8ae4a534e9cd4b430b1d6f7dce7f522218581e31bf75d84e45dc35db9'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
