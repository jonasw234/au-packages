$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/OhMyGuus/BetterCrewLink/releases/download/v2.6.4/Better-CrewLink-Setup-2.6.4.exe'
  checksum     = 'f9f199ae3decebc625343f7fd3c5ac387f674211c977216108d1de042a5be70f'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
