$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.7.5/Obsidian-1.7.5.exe'
  checksum64     = '741dba3dc1bbe0099e5e1386d969e6de2a48a94018dff16e26307bd25226cb54'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
