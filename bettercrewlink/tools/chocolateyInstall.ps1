$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v3.1.2/Better-CrewLink-Setup-3.1.2.exe'
  checksum     = '345f715a4e8a3b3e98f46c2f380d8951a68ac00caf30defddb8c2fdaf9f16b3a'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
