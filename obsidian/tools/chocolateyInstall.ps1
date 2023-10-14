$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.16/Obsidian.1.4.16-32.exe'
  checksum       = '73e2373f7b3496a44772ca598fe93ace2ffb1acee6f1966a78535682940996d2'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.16/Obsidian.1.4.16.exe'
  checksum64     = 'eb60f93f3ce10c2f4d0f8ab45ea0d457a9975f5b2f108691773951ce02d85526'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
