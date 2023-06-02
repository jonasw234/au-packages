$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.5/Obsidian.1.3.5-32.exe'
  checksum       = 'bc1f096cf1ee0b337a109b7a99c127ff47efb97237ac57327ad82fbd5ddcb025'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.5/Obsidian.1.3.5.exe'
  checksum64     = 'eb9f4147b200c1efa6294c9e47af578f6115c588c3c82f6ef6f9ba097007d9db'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
