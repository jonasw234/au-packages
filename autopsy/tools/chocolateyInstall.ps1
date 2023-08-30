$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.2/autopsy-4.19.2-32bit.msi'
    checksum       = 'f479ef83259333ee20774b9d98803a4f66da2d7d6ccb3b93c7af3fe695c48c2e'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.21.0/autopsy-4.21.0-64bit.msi'
    checksum64     = '8401a11e0e276274f078eb613ce8494dd894617d436ba326be1cda0d2fd8ef0a'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'Autopsy'
if ($uninstall_key) {
    # Autopsy doesn’t update, it just installs a second version next to the existing one.
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
