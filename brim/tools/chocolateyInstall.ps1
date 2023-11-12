$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.4.1/Zui-Setup-1.4.1.exe'
  checksum     = 'ce406e72993331704d81ea32b0ce2639e2454aaa0fb41918ca96800cf040392f'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
