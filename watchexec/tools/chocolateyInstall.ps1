$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.17.0/watchexec-1.17.0-x86_64-pc-windows-msvc.zip'
    checksum64     = 'a4426bb24578e70c9eef712d3a781c932204469fb3b4b841ad1d5ff7919dbea6'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
