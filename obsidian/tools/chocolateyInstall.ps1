$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.14.2/Obsidian.0.14.2.exe'
  checksum     = 'b25de8d7588b7ba7d537ace0f70d217794be8893e8b0269a7219b7467765779d'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
