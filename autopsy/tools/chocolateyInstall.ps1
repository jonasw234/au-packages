$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.18.0/autopsy-4.18.0-32bit.msi'
    checksum       = '61da83231b3f623c61a6f54ae17f2fe19007f9bb9b59dea2940042eac4ce5033'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.18.0/autopsy-4.18.0-64bit.msi'
    checksum64     = '6a42dfa37415340943fa077110aecee7ba39f35fc7f4aa57ae5446c41c3c9fe1'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'Autopsy'
if ($uninstall_key) {
    # Autopsy doesn’t update, it just installs a second version next to the existing one.
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
