$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.0.3/Obsidian.1.0.3-32.exe'
  checksum       = 'f1467dd452a0ec31a1ebe8c10a1d60fc9a85eb9764d4c3f3281f88aa3f3a9696'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.0.3/Obsidian.1.0.3-arm64.exe'
  checksum64     = '3ee1386c1ed0a61cd39b83ec983a8aac935fdc59ea3f3b8d012996b869ffc25b'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
