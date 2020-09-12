$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimsec/brim/releases/download/v0.17.0/Brim-Setup.exe'
  checksum     = ''
  checksumType = 'sha256'
  silentArgs   = '--silent'
}

$AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols
Install-ChocolateyPackage @packageArgs
