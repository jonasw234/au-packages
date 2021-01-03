$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimsec/brim/releases/download/v0.21.1/Brim-Setup.exe'
  checksum     = '6a52e2f274ffa35349ad366421e657cf300672c50802daa5e48ec8bf99f6071b'
  checksumType = 'sha256'
  silentArgs   = '--silent'
}

$AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
Install-ChocolateyPackage @packageArgs
