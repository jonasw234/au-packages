$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url64bit       = 'https://github.com/odedshimon/BruteShark/releases/download/v1.2.2/BruteSharkDesktopInstaller_x64.msi'
  checksum64     = 'defc770ef3dc063fba2caed8eab594ebe663772211c41dd899b12fd65f1d5826'
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'BruteSharkDesktop'
if ($uninstall_key) {
    # BruteShark needs to be uninstalled before updating
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
