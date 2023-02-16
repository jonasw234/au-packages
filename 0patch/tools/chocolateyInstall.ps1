$ErrorActionPreference = 'Stop';

$packageArgs = @{
  fileType       = 'msi'
  packageName    = '0patch'
  url            = 'https://dist.0patch.com/download/latestagent'
  checksum       = ''
  checksumType   = 'sha256'
  silentArgs     = '/qn /norestart'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Write-Warning "Don’t forget to put your login details into the 0patchConsole."
