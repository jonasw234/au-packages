$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.12.4/Obsidian.0.12.4.exe'
  checksum     = '448f47d730067421b9595c5b52daa90ecf3a9c2a7be1d2ea208e3977f357947b'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
