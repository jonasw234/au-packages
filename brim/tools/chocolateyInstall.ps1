$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimsec/brim/releases/download/v0.22.0/Brim-Setup.exe'
  checksum     = '7e1405121612b524798e77a930cc5edfe174c8713e791ef219cb09f87203cd5e'
  checksumType = 'sha256'
  silentArgs   = '--silent'
}

Install-ChocolateyPackage @packageArgs
