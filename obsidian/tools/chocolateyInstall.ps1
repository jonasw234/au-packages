$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.3/Obsidian.1.6.3-32.exe'
  checksum       = 'dc327055f55a73846e47d8229bf91395ddd4b23b129f3acff75580da5b9097be'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.3/Obsidian.1.6.3.exe'
  checksum64     = 'e4489273eb27325f1b08ed1c5f210924c49a50ca617099d1ff69dd922eef00dd'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
