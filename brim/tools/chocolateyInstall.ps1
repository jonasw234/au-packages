$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.1.0/Zui-Setup-1.1.0.exe'
  checksum     = '3f9889703d904566d213e19bf5d231fc9ea59a5b5959e5472d76e4ce67602dc6'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
