$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/phiresky/ripgrep-all/releases/download/0.9.2/ripgrep_all-0.9.2-x86_64-pc-windows-msvc.7z'
    checksum64     = '9076633786EA4950F162F554E77E4D0FDFE90F2E95F08335F3ABB423A0CFC74E'
    checksumType64 = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
