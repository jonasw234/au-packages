$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.8/Obsidian.1.5.8-32.exe'
  checksum       = 'e023b6988b38269832b0b314af5a91eb7c19fe416d147f214c2cf00b47800003'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.8/Obsidian.1.5.8.exe'
  checksum64     = 'c11cd0c22f98b638016dd33c7240d8544308929c7376e02eaa4bc450cbd3641d'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
