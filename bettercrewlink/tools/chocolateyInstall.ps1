$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.0.0/Better-CrewLink-Setup-3.0.0.exe'
  checksum     = 'ccb416b8fc19b721ec865225f6f8775e6b5fba194d41af9f5362b6e9bd41f693'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
