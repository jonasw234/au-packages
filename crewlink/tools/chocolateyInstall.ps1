$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/ottomated/CrewLink/releases/download/v2.0.1/CrewLink-Setup-2.0.1.exe'
  checksum     = '2c2d1242a36083be3e4e1a18dd234438863e469834adf4140c801471105d90ad'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
