$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/cli-v1.20.3/watchexec-1.20.3-x86_64-pc-windows-msvc.zip'
    checksum64     = '11ecd0f53b29abafa46f7ba5988a2bbead8e0a16ba95a638fda6ce110789128f'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
