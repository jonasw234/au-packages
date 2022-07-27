$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.15.9/Obsidian.0.15.9.exe'
  checksum     = 'f5b1f0a43c36f6838ca652e5c3bb68752e0600e5f3f2d014f7cd8cc68d12c606'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
