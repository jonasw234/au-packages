$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.14.6/Obsidian.0.14.6.exe'
  checksum     = '8914cc9ec280d1ab6c1953314fc800f24ac9b57dc33ebe5afe0d725ea5e30b73'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
