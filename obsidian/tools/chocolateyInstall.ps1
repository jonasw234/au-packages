$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.2.8/Obsidian.1.2.8-32.exe'
  checksum       = '1bad1a96f707cb4b6cd279f6e0d73aba87bc987597beb08d56300f83a85a9855'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.2.8/Obsidian.1.2.8.exe'
  checksum64     = '04a4d27127bb0cbaf8ab96f021c3190f8b904a1177f3dbe87f715e47201ae194'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
