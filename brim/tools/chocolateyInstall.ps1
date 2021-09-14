$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/brim/releases/download/v0.24.0/Brim-Setup.exe'
  checksum     = '5d2a4c947659c300f047e3b3870a9bc19b81d5ce7cd47a68d74923d2ee46dbee'
  checksumType = 'sha256'
  silentArgs   = '--silent'
}

Install-ChocolateyPackage @packageArgs
