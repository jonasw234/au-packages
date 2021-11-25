$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$pp = Get-PackageParameters
$installDir = $toolsPath
if ($pp.InstallDir) {
    $InstallDir = $pp.InstallDir
}
Write-Host "Cupscale is going to be installed in '$installDir'"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $installDir
    url64Bit       = 'https://github.com/n00mkrad/cupscale/releases/download/1.39/Cupscale.1.39.0f1.zip'
    checksum64     = 'fde68914ea4a103f4fe6cdc95a264b1b3af734bc768762ff6d7cfe22feb95e18'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
if ($installDir -ne $toolsPath) {
    Install-ChocolateyPath $installDir
}
