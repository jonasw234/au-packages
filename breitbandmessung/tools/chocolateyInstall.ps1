$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://download.breitbandmessung.de/bbm/Breitbandmessung-win.exe'
  checksum     = 'd562785285c70f285665310248eb7a85d9b7851e0cd5c290d43319aba27a9c34'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
