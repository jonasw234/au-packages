$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.22.0/watchexec-1.22.0-x86_64-pc-windows-msvc.zip'
    checksum64     = '0f8115768e996c3568e6488632017e29a8c6b2c59b32ca5a73e929c78253b396'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
