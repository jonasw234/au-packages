$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.2.7/Obsidian.1.2.7-32.exe'
  checksum       = 'd6dbc805f74ba3139eba0f68dda13257404ccfd6a9bf0d14b71fa35e640f2f52'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.2.7/Obsidian.1.2.7.exe'
  checksum64     = '7cfb8aedd26c1f9bc14d9362874941b08f5a5ead4cfd1bc9aabd2f4d6099d8bc'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
