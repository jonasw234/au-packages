$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.0.5/Better-CrewLink-Setup-3.0.5.exe'
  checksum     = '649b0ffb2191638d0edb4ada03a9353872be219a904b8403fa20d1ad39320804'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
