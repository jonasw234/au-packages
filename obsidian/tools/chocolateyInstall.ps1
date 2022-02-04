$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.13.24/Obsidian.0.13.24.exe'
  checksum     = '7fae58a7b35a1ecf7315b736b996209177a4e67a96f60f3105fd0ea6a8f56ade'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
