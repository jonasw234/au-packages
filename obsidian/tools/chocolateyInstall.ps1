$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.12.19/Obsidian.0.12.19.exe'
  checksum     = '374c75cfdd2609daee290be23feb1a57d1e529498d44a18d79aa0df2d89fecdf'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
