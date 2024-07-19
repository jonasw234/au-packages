$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.6.7/Obsidian-1.6.7.exe'
  checksum64     = 'a5f647be9200c9cd82fd0bdd8b86fa6a8ed958fbc7e1651ea7e921c282a17f1f'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
