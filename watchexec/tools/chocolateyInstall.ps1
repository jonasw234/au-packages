$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.20.4/watchexec-1.20.4-x86_64-pc-windows-msvc.zip'
    checksum64     = '341611a9be5057452a7b11504bcf153e57eb11b6f89aabf2b127ae1428b5a2d1'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
