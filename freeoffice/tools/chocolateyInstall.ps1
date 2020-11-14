$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://www.freeoffice.com/download.php?filename=https://www.softmaker.net/down/freeoffice2018.msi'
    checksum       = 'acf6b318bfd4b3b0ad9acf3a90427e8ba62156ea596570c8edf54cab20e366f4'
    checksumType   = 'sha256'
    silentArgs     = '/qn'
}

Install-ChocolateyPackage @packageArgs
