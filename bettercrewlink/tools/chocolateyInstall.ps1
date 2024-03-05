$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.1.3/Better-CrewLink-Setup-3.1.3.exe'
  checksum     = '440368688434b4af8b947308d55d4397d4f207b7dd625cf8c5356c30068e50f4'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
