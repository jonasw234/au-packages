$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.3.0/Zui-Setup-1.3.0.exe'
  checksum     = '38bb9077def7aca1ecb5c0fab00e96dc0c41543b6e6d6541295687f2bcaac1a0'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
