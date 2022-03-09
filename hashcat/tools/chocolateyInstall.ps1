$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/hashcat/hashcat/releases/download/v6.2.5/hashcat-6.2.5.7z'
    checksum64     = ''
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
