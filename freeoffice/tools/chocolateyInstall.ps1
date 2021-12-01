$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://www.freeoffice.com/download.php?filename=https://www.softmaker.net/down/freeoffice2021.msi'
    checksum       = '2a1104ede2d9cd854f82c8c38a52710fd2f080c754a461a649cd47bf0504e73a'
    checksumType   = 'sha256'
    silentArgs     = '/qn'
}

Install-ChocolateyPackage @packageArgs
