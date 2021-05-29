$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url            = 'https://github.com/Neo23x0/Raccine/releases/download/1.4.3/Raccine.zip'
    checksum       = 'bd5733ff173205ad5e044fd47e14a9c7e24ef5e661b781cb5ab38a3fe5a80fa0'
    checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$installer = "\tools\Raccine\install-raccine.bat"
# It is recommended to completely uninstall first
Start-ChocolateyProcessAsAdmin -FilePath "$env:ChocolateyPackageFolder$installer" -ArgumentList @("UNINSTALL") -Wait
# And only install afterwards
Start-ChocolateyProcessAsAdmin -FilePath "$env:ChocolateyPackageFolder$installer" -ArgumentList @("FULL")
