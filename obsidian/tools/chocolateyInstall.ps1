$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.15.6/Obsidian.0.15.6.exe'
  checksum     = '46c1114a93afa206fb78850941961bade2b7c7c6c4faf4f0ad2c1e6c10e3068b'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
