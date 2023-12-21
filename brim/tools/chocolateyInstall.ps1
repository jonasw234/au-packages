$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.5.0/Zui-Setup-1.5.0.exe'
  checksum     = 'b73dcac5ffd7225ff6bd147b3dc441fdd7c68d13a499d4ad3abe112f65ba60db'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
