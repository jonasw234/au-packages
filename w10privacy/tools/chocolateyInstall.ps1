$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'w10privacy'
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1567842684/module/12302828636/name/W10Privacy.zip'
  checksum64     = '4D4FCBC0386BA52C63C530C1E1B80D13B78B3746C9D6B0DE0E850C8AB0969D51'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
