$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.8.8/Better-CrewLink-Setup-2.8.8.exe'
  checksum     = 'cd9c5f53e8c3de04a6fafd9fca5c0db20a6ee3da837a3fa992fc1c54e7e98cdb'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
