$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.16.0/watchexec-1.16.0-x86_64-pc-windows-msvc.zip'
    checksum64     = ''
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
