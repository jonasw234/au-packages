$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.18.7/watchexec-1.18.7-x86_64-pc-windows-msvc.zip'
    checksum64     = 'ac5182f17c98d630517c9ed70075a6e3cf6ccea3044edfcbc6ade7ef3b181b5f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
