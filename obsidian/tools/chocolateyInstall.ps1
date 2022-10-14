$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.0.0/Obsidian.1.0.0.exe'
  checksum     = '0e8d7e3832fc0b677123f8d5ca7209a90d515b942fe9d9a26e67651c03208664'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
