$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v2.0.0/watchexec-2.0.0-x86_64-pc-windows-msvc.zip'
    checksum64     = '9e5121902c66755e68b038373e6f99ad7e41a784029a31729542886da516e2c2'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
