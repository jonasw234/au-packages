$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.24.2/watchexec-1.24.2-x86_64-pc-windows-msvc.zip'
    checksum64     = '33a81ca65f08c750bb2489ec5e77ef632f193351f44f134bc99915e767a97b4c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
