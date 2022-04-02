$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.9.7/Better-CrewLink-Setup-2.9.7.exe'
  checksum     = '060f30f3ea13891deb9e4635bc7c4318d89afa388032b892990b312ac8637dff'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
