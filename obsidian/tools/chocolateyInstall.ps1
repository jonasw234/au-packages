$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.7/Obsidian.1.3.7-32.exe'
  checksum       = '1100ea2503bac68ca6a2d57ee7ee09fda5058ceaee9f437ced226585541b9639'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.7/Obsidian.1.3.7.exe'
  checksum64     = '7e11b8c6e9e5f7723e22be3e36b7d49a6f67fffd12a77b3913978cd264ea7de2'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
