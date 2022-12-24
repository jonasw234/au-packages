$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.9/Obsidian.1.1.9-32.exe'
  checksum       = 'c005bad9dabaabf21ba9dd1c058f19a005d52e6b97b427eb58c8d1193ae9c9bc'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.9/Obsidian.1.1.9.exe'
  checksum64     = '8759af1eb38bd975c52dcf31f4ce185b3adcef0baf1a4677b51065ea9eb1e7d4'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
