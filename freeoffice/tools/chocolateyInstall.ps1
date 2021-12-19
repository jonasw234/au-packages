$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://www.freeoffice.com/download.php?filename=https://www.softmaker.net/down/freeoffice2021.msi'
    checksum       = 'ab128a576a4fd5ae51484178201b634ab306d2c17d341c30e59f8aec59b69f76'
    checksumType   = 'sha256'
    silentArgs     = '/qn'
}

Install-ChocolateyPackage @packageArgs
