$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.0/autopsy-4.19.0-32bit.msi'
    checksum       = 'aad05f2a81dd3f338a896046cb913c3291bb02a184b5081e403c0c52df0f6034'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.0/autopsy-4.19.0-64bit.msi'
    checksum64     = '333e48d4caa40993e16f9e94eceb7ab4c2f37c215daf37327473a292ba4937d7'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'Autopsy'
if ($uninstall_key) {
    # Autopsy doesn’t update, it just installs a second version next to the existing one.
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
