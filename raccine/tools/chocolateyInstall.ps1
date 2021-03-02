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

$installer = "\tools\Raccine\install-raccine.bat"
# It is recommended to completely uninstall first
Start-Process -FilePath "$env:ChocolateyPackageFolder$installer" -ArgumentList @("UNINSTALL") -Wait
# And only install afterwards
Start-Process -FilePath "$env:ChocolateyPackageFolder$installer" -ArgumentList @("FULL")
