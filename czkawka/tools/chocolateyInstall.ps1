$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/qarmin/czkawka/releases/download/4.0.0/windows_czkawka_gui.zip'
    checksum64     = '85f3023741449d357ee8ed1f7ce5248a1dcc4b5c039993a9ec5c04996f9ee415'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
