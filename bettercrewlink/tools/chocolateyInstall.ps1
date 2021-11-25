$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.8.7/Better-CrewLink-Setup-2.8.7.exe'
  checksum     = 'c9c046a5c7e645241e6c5b4680b2c465f6d839a368ec03e60303e766b5922a60'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
