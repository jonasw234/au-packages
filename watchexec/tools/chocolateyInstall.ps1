$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v2.1.1/watchexec-2.1.1-x86_64-pc-windows-msvc.zip'
    checksum64     = '54b88e07fff20c58f57eb34a82b1201f292818ef8f0b3ba0ac17468a7f46cfd9'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
