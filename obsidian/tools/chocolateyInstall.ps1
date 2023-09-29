$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.14/Obsidian.1.4.14-32.exe'
  checksum       = 'de64c4a0e8e4dfcf9593628cd22362d8568c54a23e77214ca7c75cb30f843a30'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.14/Obsidian.1.4.14.exe'
  checksum64     = '57fc583f32d4f7ef734fa1a2a3ed81f2be68b580634cdeeb7bc1289a3428513c'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
