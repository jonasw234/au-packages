$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.11/Obsidian.1.4.11-32.exe'
  checksum       = '9307dafdb63b8c987ba04f8cb8957be6a6a8414789c727f57d72aaf33876264e'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.11/Obsidian.1.4.11.exe'
  checksum64     = 'ac6268ed81c78f9d783dc249fa612e6f2461485bfd9b5059376ed2f74c4c2fbc'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
