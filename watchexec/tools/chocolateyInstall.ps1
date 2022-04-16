$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.19.0/watchexec-1.19.0-x86_64-pc-windows-msvc.zip'
    checksum64     = 'd85a4708aed8a5940c396a6807eb796bce1ad8b7d8646a7eade97fda8395cecc'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
