$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.13/Obsidian.1.4.13-32.exe'
  checksum       = '1fd066c123282a8f3cf5115121f3bda38de8b7f0e5aa5612db1989cdcb196918'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.13/Obsidian.1.4.13.exe'
  checksum64     = '8e5e8d55c75fe685e93eb8aebecf1acd47d2a4f63dba4e3f401f9eea2ba78a04'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
