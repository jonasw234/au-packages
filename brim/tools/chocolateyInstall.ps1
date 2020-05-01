$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimsec/brim/releases/download/v0.8.0/Brim-Setup.exe'
  checksum     = '705FEE6E0F1302AC95B538E617BE0ED0E3054867660E69C855B6269122AAEB5E'
  checksumType = 'sha256'
  silentArgs   = '--silent'
}

Install-ChocolateyPackage @packageArgs
