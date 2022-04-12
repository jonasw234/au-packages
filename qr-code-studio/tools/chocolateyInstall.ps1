$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://www.tec-it.com/download/QRCode_Studio.exe'
  checksum     = '9d7e66c2d308ce8c7ae6c4600b86c7b5bec0441398cfee4b12f51a1e222dfe71'
  checksumType = 'sha256'
  silentArgs   = '/quiet'
}

Install-ChocolateyPackage @packageArgs
