$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.14/Obsidian.1.4.14-32.exe'
  checksum       = '1106188f24f98bbd991de26a7a2cd1f44f80f90aef191940a979dfeafabdaa6b'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.14/Obsidian.1.4.14.exe'
  checksum64     = 'd9ef55c13cb14b848c036e8c333abaf1f2eadbc041c8ccdfddc59898b943d96b'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
