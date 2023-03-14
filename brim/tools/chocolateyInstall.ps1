$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.0.0/Zui-Setup-1.0.0.exe'
  checksum     = '2c78746d5d0b24db6a0b2583acfa1373a55d37635d9d64ca1ed83c252185147c'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
