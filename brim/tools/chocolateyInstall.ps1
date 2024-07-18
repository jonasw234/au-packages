$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.17.0/Zui-Setup-1.17.0.exe'
  checksum     = '32681e748cbf77c267ab7898ece00a43aa020950300d7b91a565205fa073db25'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
