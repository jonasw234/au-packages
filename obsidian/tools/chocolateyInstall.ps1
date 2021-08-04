$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.12.12/Obsidian.0.12.12.exe'
  checksum     = 'f65e79cfe01285926f2d5c23576beb34d6353ffacd209bfc4296dc51b37ba531'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
