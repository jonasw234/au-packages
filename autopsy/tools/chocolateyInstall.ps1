$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.17.0/autopsy-4.17.0-32bit.msi'
    checksum       = 'c5ccaed3eaa72ccaf281c079a2ac9f19aac4b529e976457dc09e0ef21b743ea6'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.17.0/autopsy-4.17.0-64bit.msi'
    checksum64     = '8c09f1fc91eacab438df8116fc2828705e2853d31c8997d8d246499d6084e321'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

$uninstall_key = Get-UninstallRegistryKey -SoftwareName 'Autopsy'
if ($uninstall_key) {
    # Autopsy doesn’t update, it just installs a second version next to the existing one.
    Uninstall-ChocolateyPackage $packageName
}
Install-ChocolateyPackage @packageArgs
