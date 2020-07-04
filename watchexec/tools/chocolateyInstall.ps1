$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = 'watchexec'
  url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/1.14.0/watchexec-1.14.0-x86_64-pc-windows-gnu.zip'
  checksum64     = '05cf743bf3ad2710bc426815360447d766003e8806b84e12e326eee0a0d1e968'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
