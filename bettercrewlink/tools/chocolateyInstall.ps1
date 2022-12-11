$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.1.1/Better-CrewLink-Setup-3.1.1.exe'
  checksum     = '299f540f9bfc0fe589ceff868b65107e0e8421116bbcff8f859f4b242105281c'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
