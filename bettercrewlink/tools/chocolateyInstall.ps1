$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.1.0/Better-CrewLink-Setup-3.1.0.exe'
  checksum     = 'a7bcf61b546c9b9fd65e13e288b7e335da64433bf1fc5c3ce6553243d153a22d'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
