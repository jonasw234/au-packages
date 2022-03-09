$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.13.31/Obsidian.0.13.31.exe'
  checksum     = '255e0f2b8dc34f2bf3d10aedf998fde86069ec55b8014bc6906654ac1d033514'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
