$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url            = 'https://github.com/Neo23x0/Raccine/releases/download/1.4.1/Raccine.zip'
    checksum       = '5bba78daec01cd786682e2132afa9c5290a05b0b10206ebbeae8e9ed3b002740'
    checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$installer = $unzipLocation + "\Raccine\install-raccine.bat"
# It is recommended to completely uninstall first
$env:SELECTED_OPTION = "UNINSTALL"
Start-Process -FilePath $installer -Wait
# And only install afterwards
$env:SELECTED_OPTION = "FULL"
Start-Process -FilePath $installer
