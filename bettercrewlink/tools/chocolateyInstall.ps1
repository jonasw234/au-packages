$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.8.9/Better-CrewLink-Setup-2.8.9.exe'
  checksum     = '42d28112288f5d8379a7519ffef2eea1ea08e15fe7465eda86f85f396a767073'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
