$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'watchexec'
  url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/1.14.0/watchexec-1.14.0-x86_64-pc-windows-gnu.zip'
  checksum64     = '05CF743BF3AD2710BC426815360447D766003E8806B84E12E326EEE0A0D1E968'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
