$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.5/Obsidian.1.4.5-32.exe'
  checksum       = '0f68d47632c700e54d6a019a8d2b555b485af43aa88ec7e1cb98b7cdaa7a0d6b'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.5/Obsidian.1.4.5.exe'
  checksum64     = 'a5995a610a25f843128ed6ef6fe1bd2b0102f8549edf0b5d81dc82ba638e0074'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
