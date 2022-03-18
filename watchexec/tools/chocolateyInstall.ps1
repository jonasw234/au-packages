$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.18.9/watchexec-1.18.9-x86_64-pc-windows-msvc.zip'
    checksum64     = 'b1e4a05e062794e2e66e7ed5f7727e321f98d4f45129780510132df38bc0a44e'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
