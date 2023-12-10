$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.24.0/watchexec-1.24.0-x86_64-pc-windows-msvc.zip'
    checksum64     = '4c091bcd814ff3ab712fec94d281ac1a6db899de3507167944eca461b9349ff8'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
