$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName
$pp = Get-PackageParameters
$installDir = 'C:\Program Files\SoftMaker FreeOffice 2021'
if ($pp.InstallDir) {
    $installDir = $pp.InstallDir
}

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://www.freeoffice.com/download.php?filename=https://www.softmaker.net/down/freeoffice2021.msi'
    checksum       = '83ef976de06b213731dcc32150b69efb4d6d2fd5be790c51ceaa65b61a92068d'
    checksumType   = 'sha256'
    silentArgs     = '/norestart /qn APPLICATIONFOLDER="' + $installDir + '"'
}

Install-ChocolateyPackage @packageArgs
