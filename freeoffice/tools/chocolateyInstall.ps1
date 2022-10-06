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
    checksum       = '32c40f5276e262b733a67a8b714df0c795c1fd2f62692d444a6e69795365ba28'
    checksumType   = 'sha256'
    silentArgs     = '/norestart /qn APPLICATIONFOLDER="' + $installDir + '"'
}

Install-ChocolateyPackage @packageArgs
