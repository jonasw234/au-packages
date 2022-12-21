$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.8/Obsidian.1.1.8-32.exe'
  checksum       = 'afb9f375e5aa54066555aefcd99fc46e5910cdfdda166f6098882bb79aa4ed55'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.8/Obsidian.1.1.8-arm64.exe'
  checksum64     = '4e545d88bc6e78462e9bea438efb17f4954163790932181b55b274de325b8cb7'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
