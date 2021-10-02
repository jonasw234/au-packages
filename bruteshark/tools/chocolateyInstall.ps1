$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url64bit       = 'https://github.com/odedshimon/BruteShark/releases/download/v1.2.5/BruteSharkDesktopInstaller_x64.msi'
  checksum64     = 'ff9a4ecce0afc84ef9b1fcb5d9755319cfa16f9eb69d6f483a168e3453d3387c'
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'BruteSharkDesktop'
if ($uninstall_key) {
    # BruteShark needs to be uninstalled before updating
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
