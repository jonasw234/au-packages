$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'watchexec'
  url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/1.10.3/watchexec-1.10.3-x86_64-pc-windows-gnu.zip'
  checksum64     = 'ACDC33D6C12D11957549556F2D302EE67E93BC9ACF4B1C25512F14D2A9C601F0'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
