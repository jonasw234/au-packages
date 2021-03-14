$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.3.6/Better-CrewLink-Setup-2.3.6.exe'
  checksum     = '7402d7355627306f05caf75338cc77c6a2cf371c535ac899f99f7e8a59bd5dd1'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
