$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.13.14/Obsidian.0.13.14.exe'
  checksum     = 'df82ed43c3f9aed3c1fe2d39516005403aca91304bac2ecd32425a9315ab5836'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
