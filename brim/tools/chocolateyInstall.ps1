$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/brim/releases/download/v0.29.0/Brim-Setup-0.29.0.exe'
  checksum     = '5208435e4b886e4a2b84eece27e0436948281647d5a0b8b4937756d97be812ee'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
