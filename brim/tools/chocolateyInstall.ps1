$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.7.0/Zui-Setup-1.7.0.exe'
  checksum     = 'a12cbab36e7c636edabf3dfd24e5ae4c4e9482f19f75ec7f1f7af4e29cf1905d'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
