$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    fileType       = 'exe'
    packageName    = $packageName
    url            = 'https://github.com/manisandro/gImageReader/releases/download/v3.3.1/gImageReader_3.3.1_qt5_i686.exe'
    checksum       = 'A363F282CF44E839C3163EFA00D363A7372A84432B396F380C2A50241F45DD44'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/manisandro/gImageReader/releases/download/v3.3.1/gImageReader_3.3.1_qt5_x86_64.exe'
    checksum64     = '05F7A16A0CC4E914EF84BCF1246BFAB0636C15CC4A335220E7F8111D6A053F70'
    checksum64Type = 'sha256'
    silentArgs     = '/S'
}
Install-ChocolateyPackage @packageArgs
