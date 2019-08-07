$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url         = ( -f $version)
$url64       = ( -f $version)

$packageArgs = @{
    fileType       = 'exe'
    packageName    = $packageName
    url            = 'https://github.com/manisandro/gImageReader/releases/download/v3.3.1/gImageReader_3.3.1_qt5_i686.exe'
    checksum       = '2905d2b23c96073a9c762b828b4d3cac018a14e5'
    checksumType   = 'sha1'
    url64bit       = 'https://github.com/manisandro/gImageReader/releases/download/v3.3.1/gImageReader_3.3.1_qt5_x86_64.exe'
    checksum64     = '6154e8332f2536419b52d2b74ff905789d4a7e9c'
    checksum64Type = 'sha1'
    silentArgs     = '/S'
}
Install-ChocolateyPackage @packageArgs
