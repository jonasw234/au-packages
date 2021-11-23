$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/qarmin/czkawka/releases/download/3.3.1/windows_czkawka_gui.zip'
    checksum64     = ''
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
