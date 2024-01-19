$ErrorActionPreference = 'Stop';

$version     = $env:chocolateyPackageVersion
$packageName = $env:chocolateyPackageName
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64bit       = 'https://github.com/phiresky/ripgrep-all/releases/download/v0.10.6/ripgrep_all-v0.10.6-x86_64-pc-windows-msvc.zip'
    checksum64     = 'a9accca8d2aa1bb0769be4648bb180fe8c17b1c62b10b05cf4d4017639d22024'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
