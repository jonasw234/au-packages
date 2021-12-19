$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/qarmin/czkawka/releases/download/3.3.1/windows_czkawka_gui.zip'
    checksum64     = '2697e71a8aa0242c35293460fe0f625c113aa9c518a8010313d94ebb1f7a64cd'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
