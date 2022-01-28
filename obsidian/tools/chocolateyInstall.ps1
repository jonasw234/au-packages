$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.13.23/Obsidian.0.13.23.exe'
  checksum     = '5a099f5de2e566727b2a1d62b31d6cf2a7ddd342be3402779d15cc3b5e9762ca'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
