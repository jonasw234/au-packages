$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.16/Obsidian.1.1.16-32.exe'
  checksum       = '3e0de124c8014ff3992f63f35210b698d4803d823c435fbc8a65db103040fddf'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.16/Obsidian.1.1.16.exe'
  checksum64     = 'bdceb2f2cb606ce98a8e3de5b42f2f5ea197c8a50fb34db42ea2fc00f5a385d8'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
