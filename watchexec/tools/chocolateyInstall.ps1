$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'watchexec'
  url64bit       = 'https://github.com/watchexec/watchexec/releases/download/1.10.3/watchexec-1.10.3-x86_64-pc-windows-gnu.zip'
  checksum64     = ''
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
