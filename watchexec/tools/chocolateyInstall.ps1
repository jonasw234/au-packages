$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.20.6/watchexec-1.20.6-x86_64-pc-windows-msvc.zip'
    checksum64     = 'f625f33830d77384cd65b594d30ca96aff62402a5e1a4fa0d100312ccad2e1aa'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
