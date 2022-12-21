$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.8/Obsidian.1.1.8-32.exe'
  checksum       = 'afb9f375e5aa54066555aefcd99fc46e5910cdfdda166f6098882bb79aa4ed55'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.1.8/Obsidian.1.1.8.exe'
  checksum64     = 'E926ACF88F6552CC096868CD1806202A873D8603E3400AA4D78035ADC0375DEF'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
