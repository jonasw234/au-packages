$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.23.0/watchexec-1.23.0-x86_64-pc-windows-msvc.zip'
    checksum64     = '394ba47e582044a065ccfe7acf951b30fa25bf003a246050aa84772c864ad94b'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
