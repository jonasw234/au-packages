$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/zui/releases/download/v1.18.0/Zui-Setup-1.18.0.exe'
  checksum     = '4150273579dbe40c77c873b3269d733a13023e34868231b0e44c54a3925b8a4c'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
