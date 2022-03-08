$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.13.30/Obsidian.0.13.30.exe'
  checksum     = 'c0f84ac5fb834ab995d825567b742a038ce4f01dbde9e3578fbf836ad16cf044'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
