$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.22.2/watchexec-1.22.2-x86_64-pc-windows-msvc.zip'
    checksum64     = 'ac3be1228542e56566c8ef6e5ed72e10f3c6eca06a29e59e02c231d1316cd4a4'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
