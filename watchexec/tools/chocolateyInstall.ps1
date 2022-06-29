$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.20.2/watchexec-1.20.2-x86_64-pc-windows-msvc.zip'
    checksum64     = '6e7a9e6f832ee8f55316ebdd32dcc98c58150fcbcc3587cd564f12f70be8b4c9'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
