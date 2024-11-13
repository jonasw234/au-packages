$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.7.6/Obsidian-1.7.6.exe'
  checksum64     = 'ef1c0befceafb6931eb60f484c01dbcef0e7cb8d6350c8f1d8fb8d0bfb1a36ab'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
