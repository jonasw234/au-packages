$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.14.15/Obsidian.0.14.15.exe'
  checksum     = 'd3e1ed83a6266fe333ef16298edf816d8574b263cef47dcda63b2d0e1d87f207'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
