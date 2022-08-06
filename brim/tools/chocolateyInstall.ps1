$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/brim/releases/download/v0.31.0/Brim-Setup-0.31.0.exe'
  checksum     = '49e8b1ad9ca1acee832ccb01816277a21271cb9f50b8ebd477c6200a405f5c9b'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
