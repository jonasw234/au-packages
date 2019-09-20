$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/phiresky/ripgrep-all/releases/download/0.9.3/ripgrep_all-0.9.3-x86_64-pc-windows-msvc.7z'
    checksum64     = 'ef26533e7a901755d50adc43c4cf34a267c5e008d1df2ccbae4d3cf8dadf7db3'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
