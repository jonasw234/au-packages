$ErrorActionPreference = 'Stop';

$packageArgs = @{
  fileType       = 'msi'
  packageName    = '0patch'
  url            = 'https://dist.0patch.com/download/latestagent'
  checksum       = 'f067a133f380d9d74d067387cf4461f1e0581ca690c5f32ec40f32b70e0a0525'
  checksumType   = 'sha256'
  silentArgs     = '/qn'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Write-Warning "Don’t forget to put your login details into the 0patchConsole."
