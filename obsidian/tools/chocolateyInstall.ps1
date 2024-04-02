$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/Obsidian.1.5.12-32.exe'
  checksum       = 'ce361976ba8efd5be153c82c6479a2eac565a3d77c0539d6993abe60283d1131'
  checksumType   = 'sha256'
  url64bit       = 'https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.12/Obsidian.1.5.12.exe'
  checksum64     = '8d28daa2b3bbb1258e258c539b5fdb1036438d0f8109516e105e9b1b2f673a01'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
