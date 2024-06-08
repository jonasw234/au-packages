$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.2/Obsidian.1.6.2-32.exe'
  checksum       = '96e1fd5754324c0befdbd37ea385d7bbcdd5db68ef2316a60e3562670ee6809f'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.2/Obsidian.1.6.2.exe'
  checksum64     = 'aa55f162d3b0e619363fe113ce4ab7968ccc951cd4f8a01f1d4394150b690a50'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
