$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://download.breitbandmessung.de/bbm/Breitbandmessung-win.exe'
  checksum     = '22eb8dcd963ebce1f11e9c9ab3e62272dc3cc8afc6d4af0ded9d47aa92962777'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
