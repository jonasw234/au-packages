$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.14.0/autopsy-4.14.0-32bit.msi'
    checksum       = '329c20a2487d81e059393ab524df564e70cd108d57c07e9b063f12d8d22767e4'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/sleuthkit/autopsy/releases/download/autopsy-4.14.0/autopsy-4.14.0-64bit.msi'
    checksum64     = '47f8e1bc327dc1e858a6219bbe7377c5c0e64f8532706446ed882f336e5c3b4c'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
