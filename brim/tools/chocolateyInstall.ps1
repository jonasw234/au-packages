$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.2.0/Zui-Setup-1.2.0.exe'
  checksum     = 'd74f268e9a33e5e3c5dc1d9b4e1e7f8fff612814dd53cbe16e64f070834290f6'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
