$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.8.6/Better-CrewLink-Setup-2.8.6.exe'
  checksum     = 'b30a681073a8662f4253f7c03f323529e62442391e78aac82444c9b31ac25be5'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
