$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.11.5/Obsidian.0.11.5.exe'
  checksum     = '7cb53bfe50bfdaa66dad522f99a72c25da7984b7705c73a92781ff326afa3ffe'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
