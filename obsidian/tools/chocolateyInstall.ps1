$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.3/Obsidian.1.3.3-32.exe'
  checksum       = '521180fd957db00c36cff730aeb096045174d0573dc2fec0f38624458d528812'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.3/Obsidian.1.3.3.exe'
  checksum64     = 'c3db1d7d5cac4fc136afa70bf5d1a9d55011096c01868577d3769494d25b3af2'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
