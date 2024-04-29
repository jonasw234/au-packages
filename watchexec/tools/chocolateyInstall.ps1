$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v2.1.0/watchexec-2.1.0-x86_64-pc-windows-msvc.zip'
    checksum64     = 'e7b7d0e7ba6968c475af4ea2741f0ad990b64c7974d97ee0aee855c4e5192ca6'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
