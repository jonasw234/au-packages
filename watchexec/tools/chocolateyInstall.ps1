$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.24.1/watchexec-1.24.1-x86_64-pc-windows-msvc.zip'
    checksum64     = '968c456b6fdd4a73ba1ee1404e318c093dc0fcaf9717f779aef0fca37df62ef4'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
