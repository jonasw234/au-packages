$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.0.1/Zui-Setup-1.0.1.exe'
  checksum     = 'cf787cef782636cc8ea204bc682bf4ad771176da88fe5c20490d95a4e5ee5cb8'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
