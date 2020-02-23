$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  fileType       = 'msi'
  packageName    = '0patch'
  url            = 'https://dist.0patch.com/download/latestagent'
  checksum       = ''
  checksumType   = 'sha256'
  silentArgs     = '/qn'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Write-Warning "Don’t forget to put your login details into the 0patchConsole."
