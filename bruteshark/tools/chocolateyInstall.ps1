$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url64bit       = 'https://github.com/odedshimon/BruteShark/releases/download/v1.1.2/BruteSharkDesktopInstaller_x64.msi'
  checksum64     = '474cca474166d9e8edafebc893768a48e069d5e688892d787ad41177d30b6a12'
  checksumType64 = 'sha256'
  silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'BruteSharkDesktop'
if ($uninstall_key) {
    # BruteShark needs to be uninstalled before updating
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
