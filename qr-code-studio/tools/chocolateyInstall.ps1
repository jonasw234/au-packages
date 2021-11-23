$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://www.tec-it.com/download/QRCode_Studio.exe'
  checksum     = '204ce8de0961d1fe10087065c8c7ec56e870b1431f372b68007cdbdb595c4407'
  checksumType = 'sha256'
  silentArgs   = '/quiet'
}

Install-ChocolateyPackage @packageArgs
