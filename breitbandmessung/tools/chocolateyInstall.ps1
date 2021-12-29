$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://download.breitbandmessung.de/bbm/Breitbandmessung-win.exe'
  checksum     = '3642d47db20b12eac796288b51a69e3176d214e5f6a710288533f83622b9777c'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
