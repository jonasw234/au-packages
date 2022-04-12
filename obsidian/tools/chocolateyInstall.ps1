$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.14.5/Obsidian.0.14.5.exe'
  checksum     = '2de2f276e6ac1f13c4c6a627d22b10b5c8b99bb58b5b2538e26596ef0ce541d6'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
