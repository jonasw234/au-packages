$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimsec/brim/releases/download/v0.12.0/Brim-Setup.exe'
  checksum     = '12E1980BAE5FBD7664647610BAC7CE097774D2CE5778ACC0749D9D89E66F75C3'
  checksumType = 'sha256'
  silentArgs   = '--silent'
}

Install-ChocolateyPackage @packageArgs
