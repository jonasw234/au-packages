$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.9.1/Better-CrewLink-Setup-2.9.1.exe'
  checksum     = '73684de96295c0e6b1c5026a9398fc686a3e9812f3f22b4b468ee02c5162a424'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
