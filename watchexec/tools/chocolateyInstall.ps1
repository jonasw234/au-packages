$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.21.1/watchexec-1.21.1-x86_64-pc-windows-msvc.zip'
    checksum64     = '47ace625bd308fe5499f50198a4dea43e9ed311e857e0f46f8f46a75eb6dfb57'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
