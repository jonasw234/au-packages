$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/qarmin/czkawka/releases/download/4.1.0/windows_czkawka_gui.zip'
    checksum64     = 'b522caa155c33bd9551750952d225516a75d2e02f295398534c4f3dc2c032f39'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
