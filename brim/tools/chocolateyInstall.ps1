$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.8.0/Zui-Setup-1.8.0.exe'
  checksum     = '9ec5790deaf5dcf1454bce2970038448a6cb79a15bb568c2a6b9239d998c2e13'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
