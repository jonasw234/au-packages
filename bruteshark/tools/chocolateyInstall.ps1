$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url64bit       = 'https://github.com/odedshimon/BruteShark/releases/download/v1.1.3/BruteSharkDesktopInstaller_x64.msi'
  checksum64     = '89da430e30fef9a4ac020e193eb37ab21fb55b4ca4f2301b2845eb2cbc649862'
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'BruteSharkDesktop'
if ($uninstall_key) {
    # BruteShark needs to be uninstalled before updating
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
