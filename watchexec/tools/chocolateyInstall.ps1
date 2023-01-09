$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.21.0/watchexec-1.21.0-x86_64-pc-windows-msvc.zip'
    checksum64     = '177d10795feaf6510c7d1f7564b5be41f216a82bb37f62aba8be7f7330a44929'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
