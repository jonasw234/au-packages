$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url            = 'https://github.com/Neo23x0/Raccine/releases/download/1.4.4/Raccine.zip'
    checksum       = '8b8524d99c41e32912669ff4be7aba713495ad3fc03e345c5a7e16d473718e48'
    checksumType   = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$installer = "\tools\Raccine\install-raccine.bat"
# It is recommended to completely uninstall first
Start-ChocolateyProcessAsAdmin -FilePath "$env:ChocolateyPackageFolder$installer" -ArgumentList @("UNINSTALL") -Wait
# And only install afterwards
Start-ChocolateyProcessAsAdmin -FilePath "$env:ChocolateyPackageFolder$installer" -ArgumentList @("FULL")
