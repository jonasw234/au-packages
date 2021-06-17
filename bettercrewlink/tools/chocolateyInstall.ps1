$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.7.2/Better-CrewLink-Setup-2.7.2.exe'
  checksum     = 'fd727805f8b7b199c820ad0046b6f971eb062e993f9306300abdcbbedfa39b90'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
