$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.12.15/Obsidian.0.12.15.exe'
  checksum     = '3b7bf2d0d41f4e438c5e9aedb9ed47951aebaeb502ecd72aed8d698796831aba'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
