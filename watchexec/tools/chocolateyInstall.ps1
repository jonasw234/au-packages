$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
    url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/v1.25.0/watchexec-1.25.0-x86_64-pc-windows-msvc.zip'
    checksum64     = 'dcc9ecdec1abc717c3d7a8832c04525aeba24ac35247457c9b954382f8dbd8e9'
    checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
