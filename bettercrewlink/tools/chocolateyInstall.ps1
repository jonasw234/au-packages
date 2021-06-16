$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.7.0/Better-CrewLink-Setup-2.7.0.exe'
  checksum     = 'a66177ed6e11f62684d9a076536b3fd3038376497103ef3c16000917a27659c4'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
