$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.6.0/Zui-Setup-1.6.0.exe'
  checksum     = 'ccefcd0a477026d060e8caed0d6378e2c0c0105d842d205ce710fc3109bfa8eb'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
