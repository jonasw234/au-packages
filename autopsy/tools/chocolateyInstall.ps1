$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.2/autopsy-4.19.2-32bit.msi'
    checksum       = 'f479ef83259333ee20774b9d98803a4f66da2d7d6ccb3b93c7af3fe695c48c2e'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.3/autopsy-4.19.3-64bit.msi'
    checksum64     = 'c61beb6ad0ccb6182c9af376fd74b12387f6bfac515bada249f8c9ca96f9cb72'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'Autopsy'
if ($uninstall_key) {
    # Autopsy doesn’t update, it just installs a second version next to the existing one.
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
