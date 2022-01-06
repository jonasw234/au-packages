$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.13.19/Obsidian.0.13.19.exe'
  checksum     = '3e6d589a66d9c977c69cca28467ffa534dd5bc069851a82230af17a96ce44543'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
