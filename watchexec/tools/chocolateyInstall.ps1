$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'watchexec'
  url64Bit       = 'https://github.com/watchexec/watchexec/releases/download/1.13.1/watchexec-1.13.1-x86_64-pc-windows-gnu.zip'
  checksum64     = 'CA3BE4674855732DF31A025F76A70E7A96BE9830FEA7279EC6289CFA408D3315'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
