$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://www.freeoffice.com/download.php?filename=https://www.softmaker.net/down/freeoffice2018.msi'
    checksum       = 'e63237c26e3311533d77452a496ed2a5761dd2f0593af2d352a8505a1537dbe0'
    checksumType   = 'sha256'
    silentArgs     = '/qn'
}

Install-ChocolateyPackage @packageArgs
