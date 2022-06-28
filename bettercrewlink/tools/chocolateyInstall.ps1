$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.0.3/Better-CrewLink-Setup-3.0.3.exe'
  checksum     = 'a47f2d5f5d7dc9ffc991a326dbeaf189e54f4053195bc606b02d52dce18c17fe'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
