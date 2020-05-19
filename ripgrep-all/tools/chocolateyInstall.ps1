$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/phiresky/ripgrep-all/releases/download/v0.9.6/ripgrep_all-v0.9.6-x86_64-pc-windows-msvc.zip'
    checksum64     = '1a223e59ba1f6f0e393d24207615d2872a08c3a1b84e48216308cf8e849fe0ce'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
