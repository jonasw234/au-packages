$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.0.1/Better-CrewLink-Setup-3.0.1.exe'
  checksum     = '1155e1fc7d2a2ebc5ab50012f5d605b1cd59efaa13a5d85b6fc3f64d0da76353'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
