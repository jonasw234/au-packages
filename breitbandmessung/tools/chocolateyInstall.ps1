$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://download.breitbandmessung.de/bbm/Breitbandmessung-win.exe'
  checksum     = 'adc86f0359dd97c7eb751584c82b5486c2215ebf6e15ca02a07a9e4b6c5d44b5'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
