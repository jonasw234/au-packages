$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.25.1/watchexec-1.25.1-x86_64-pc-windows-msvc.zip'
    checksum64     = '19d5e8ddee78364c8513dbffb0bac2ad020d3b55d544624f7eced78b8f2b5788'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
