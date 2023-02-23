$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.15/Obsidian.1.1.15-32.exe'
  checksum       = 'e300c303323d079e9dc30956066ec73db73f8851d56a10b70dd2460f5c3f6ea6'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.15/Obsidian.1.1.15.exe'
  checksum64     = 'c081e1737c5e1c2041c7cd1128328df49334952ced4f6469242d56c37be613ed'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
