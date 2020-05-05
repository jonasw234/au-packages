$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.15.0/autopsy-4.15.0-32bit.msi'
    checksum       = 'be50bc9c99c8ec3443098b04b973e90f1a807748f63658d3bd995e8584e0ab4f'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.15.0/autopsy-4.15.0-64bit.msi'
    checksum64     = '36b66487aa294c03e04caaaaf3d69d8f1604c83b42167cf290a86d8eddfb3856'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
