$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.15.8/Obsidian.0.15.8.exe'
  checksum     = 'ba921466fc9720af154081ecd59b15c645733964142a84aa8b89be69ac4b8cf0'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
