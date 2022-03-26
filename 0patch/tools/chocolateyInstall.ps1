$ErrorActionPreference = 'Stop';

$packageArgs = @{
  fileType       = 'msi'
  packageName    = '0patch'
  url            = 'https://dist.0patch.com/download/latestagent'
  checksum       = '492e2c8e63be6e484b06d45d2fb6276db7de5a0fba161bf34b10ddeb98e53d32'
  checksumType   = 'sha256'
  silentArgs     = '/qn /norestart'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Write-Warning "Don’t forget to put your login details into the 0patchConsole."
