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
    checksum       = 'ed3a055ca4c9e8f479efdd72fd4c214e9e85120b6fc49c474b205b78fa1b168f'
    checksumType   = 'sha256'
    silentArgs     = '/norestart /qn APPLICATIONFOLDER="' + $installDir + '"'
}

Install-ChocolateyPackage @packageArgs
