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
    checksum       = '71b78f12f8ccce3b2ddc6b4eadb6b8395390252880d3e735fa80bbe6b64b19aa'
    checksumType   = 'sha256'
    silentArgs     = '/norestart /qn APPLICATIONFOLDER="' + $installDir + '"'
}

Install-ChocolateyPackage @packageArgs
