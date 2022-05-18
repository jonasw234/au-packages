$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/brim/releases/download/v0.30.0/Brim-Setup-0.30.0.exe'
  checksum     = '33e86bbf67936459a50b3cc1713254b6a4cf817ab46b07d49ffe7658edb84349'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
