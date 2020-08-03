$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = 'bruteshark'
  fileType       = 'msi'
  url64bit       = 'https://github.com/odedshimon/BruteShark/releases/download/v1.0.5/BruteSharkDesktopInstaller_x64.msi'
  checksum64     = '8f8e5e66e3c08b5b42d11d65df2a2b48a1a73febfb60eee80e7b5bc7d61cbb63'
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
