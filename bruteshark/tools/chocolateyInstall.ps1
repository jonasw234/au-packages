$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = 'bruteshark'
  fileType       = 'msi'
  url64bit       = 'https://github.com/odedshimon/BruteShark/releases/download/v1.1.1/BruteSharkDesktopInstaller_x64.msi'
  checksum64     = '83203976bcede808b57eaae4c7148b2ed170f6c6d021e2a93fcc492e26c10fa2'
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
