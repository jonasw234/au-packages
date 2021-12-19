$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.17.1/watchexec-1.17.1-x86_64-pc-windows-msvc.zip'
    checksum64     = 'a39e5d711c93b3fd2d08b9196573f727cfdeec70a95f5b0ae4d0a9201a6ab14c'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
