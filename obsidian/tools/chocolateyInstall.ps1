$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.4/Obsidian.1.3.4-32.exe'
  checksum       = 'bfe5854a1376772cbcb420db99a2f5b0eaf07d06ff64ec6ed07dbe962a3d9178'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.4/Obsidian.1.3.4.exe'
  checksum64     = 'd8f618c75c4058f36f482fb04c963925f05bc140680a80b0a73610477831f4cf'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
