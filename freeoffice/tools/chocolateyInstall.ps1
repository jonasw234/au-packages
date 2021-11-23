$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://www.freeoffice.com/download.php?filename=https://www.softmaker.net/down/freeoffice2021.msi'
    checksum       = 'c15d63206dd13df06d63d5678f5eb7424cda30b8937d0eb73809b5b60ca70fe1'
    checksumType   = 'sha256'
    silentArgs     = '/qn'
}

Install-ChocolateyPackage @packageArgs
