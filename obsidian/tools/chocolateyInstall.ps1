$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v0.12.10/Obsidian.0.12.10.exe'
  checksum     = 'e8be4e3f589fc5525b711dd9a3878ae22984dc6081ba5dc7807827a445c2792a'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
