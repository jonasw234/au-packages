$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/hashcat/hashcat/releases/download/v6.2.4/hashcat-6.2.4.7z'
    checksum64     = 'be6abeca5ab5b06a17850c69e954e7124d91ecdb5844b75e4df548158cbc9514'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
