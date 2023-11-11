$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.4.0/Zui-Setup-1.4.0.exe'
  checksum     = 'e67cbdc2c473912a3b2b41f3224f4d28b2b1b3ab9afb4690884a2d572c1a68f9'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
