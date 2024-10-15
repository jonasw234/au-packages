$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v2.2.0/watchexec-2.2.0-x86_64-pc-windows-msvc.zip'
    checksum64     = 'b98cdc733ab62eb8f18c066e6fe4c6452638e943ce0be6bf18d8c5603cb12410'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
