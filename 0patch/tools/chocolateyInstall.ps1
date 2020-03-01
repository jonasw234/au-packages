$ErrorActionPreference = 'Stop';

$packageArgs = @{
  fileType       = 'msi'
  packageName    = '0patch'
  url            = 'https://dist.0patch.com/download/latestagent'
  checksum       = '7143e227897177046b58a0e4fe3ec480e1e19d73e3c53f6057f5916654e355bc'
  checksumType   = 'sha256'
  silentArgs     = '/qn'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Write-Warning "Don’t forget to put your login details into the 0patchConsole."
