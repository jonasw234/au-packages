$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.11/Obsidian.1.5.11-32.exe'
  checksum       = '848ba11f95f4013b876cc59f72afe9841281b93910296124a364b39ea269221e'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.11/Obsidian.1.5.11.exe'
  checksum64     = '0e710091120bd22420992a2b89bf0ba9558d3cf55ceb2cdad6f7fc5cbd6e9c39'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
