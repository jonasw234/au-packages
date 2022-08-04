$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.20.5/watchexec-1.20.5-x86_64-pc-windows-msvc.zip'
    checksum64     = '1e440070b1fa7528cd333d725e5b7c35d7851746bc3a1a8edf10cc3e4094fe6c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
