$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.0.2/Better-CrewLink-Setup-3.0.2.exe'
  checksum     = 'aa010f6c9859336ecc3a56b1e75ce1f46da8b019b2c9dfc85bf4111f67f209bc'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
