$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/phiresky/ripgrep-all/releases/download/0.9.2/ripgrep_all-0.9.2-x86_64-pc-windows-msvc.7z'
    checksum64     = '50762A940E2552987F04C91D33E87B9E8490616E'
    checksumType64 = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
