$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.18.11/watchexec-1.18.11-x86_64-pc-windows-msvc.zip'
    checksum64     = '74b509751b5bd3fcbef8f171fa70e50fe77e7f09a8e375032e69ff18a823c100'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
