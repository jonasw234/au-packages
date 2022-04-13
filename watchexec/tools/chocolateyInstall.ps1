$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.18.12/watchexec-1.18.12-x86_64-pc-windows-msvc.zip'
    checksum64     = '7ebcb3f12c38e6ea3b084781235b1b6c5729dae54df7e721aabc896165eab607'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
