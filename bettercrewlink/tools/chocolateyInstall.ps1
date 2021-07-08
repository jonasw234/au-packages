$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.7.5/Better-CrewLink-Setup-2.7.5.exe'
  checksum     = 'e0c5369e1675f36d5b96b285e7dcc470a519d4ece953ae7e2c631b76565bfa11'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
