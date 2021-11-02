$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/qarmin/czkawka/releases/download/3.2.0/windows_czkawka_gui.zip'
    checksum64     = '260f80c56807680859f75edd32e8e34d95cb7dd0b5254052228efe057abf00af'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
