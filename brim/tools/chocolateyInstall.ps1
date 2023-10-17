$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.3.1/Zui-Setup-1.3.1.exe'
  checksum     = '9c5d3c3510eb1ac1bc5f9cbf1f4fe113c1b9d0c117861ed08f0385ca11c64c7b'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
