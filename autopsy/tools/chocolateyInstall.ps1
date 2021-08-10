$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.1/autopsy-4.19.1-32bit.msi'
    checksum       = 'e3927d5e32080342ead424f7719477b76362badaac1127e1184a0884013a10b0'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.19.1/autopsy-4.19.1-64bit.msi'
    checksum64     = 'e47e29b88964ee6f25dc3197f7ec76cfbc86bdf94fef463c80eaabde99de104f'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'Autopsy'
if ($uninstall_key) {
    # Autopsy doesn’t update, it just installs a second version next to the existing one.
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
