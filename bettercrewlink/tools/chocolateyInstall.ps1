$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.8.0/Better-CrewLink-Setup-2.8.0.exe'
  checksum     = '5c64d36fe4451e46160ce0ef4076008107d6560174cbf5e99f4bb367b4d5af8c'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
