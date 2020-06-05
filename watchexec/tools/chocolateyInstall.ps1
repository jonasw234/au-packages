$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'watchexec'
  url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/1.13.0/watchexec-1.13.0-x86_64-pc-windows-gnu.zip'
  checksum64     = 'C45F945BA2AEC1A9C71B538C818A6B4FF455641B09AE3E5C56530C8613AD17FE'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
