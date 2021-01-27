$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimsec/brim/releases/download/v0.23.0/Brim-Setup.exe'
  checksum     = ''
  checksumType = 'sha256'
  silentArgs   = '--silent'
}

Install-ChocolateyPackage @packageArgs
