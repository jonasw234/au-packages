$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.12/Obsidian.1.4.12-32.exe'
  checksum       = 'ba42f949ed20804f3bb64ab3941566d276d63d90dc384f035e433745493698f3'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.12/Obsidian.1.4.12.exe'
  checksum64     = 'bf2cbcfe3632a4a85d65f7b3fb8da2c45174680c5ab4f09f5cccb13b7c351cb8'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
