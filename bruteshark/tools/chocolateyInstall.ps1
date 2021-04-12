$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url64bit       = 'https://github.com/odedshimon/BruteShark/releases/download/v1.2.1/BruteSharkDesktopInstaller_x64.msi'
  checksum64     = '65617681e2e2bd10ff17a848d5106eef17eec6a227819674eadfa6f6e121faf1'
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'BruteSharkDesktop'
if ($uninstall_key) {
    # BruteShark needs to be uninstalled before updating
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
