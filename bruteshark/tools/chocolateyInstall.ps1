$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = 'bruteshark'
  fileType       = 'msi'
  url64bit       = 'https://github.com/odedshimon/BruteShark/releases/download/v1.1.0/BruteSharkDesktopInstaller_x64.msi'
  checksum64     = '5f9dc6b5a54da42313139fb0848ec0ee997c7f62039967ccfab03ec89251cbdf'
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
