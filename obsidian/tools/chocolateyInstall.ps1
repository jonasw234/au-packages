$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.3/Obsidian.1.5.3-32.exe'
  checksum       = 'bfbb6be48e545af81d6ea0c66ff8f41d19fcd1afc21499d44fa89c9f1241bf42'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.3/Obsidian.1.5.3.exe'
  checksum64     = '6baf021a476b3731242ddc9b3d5b4a6006bc684d70fcdda1eb9ff6889da82319'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
