$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'w10privacy'
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1570770147/module/12302828636/name/W10Privacy.zip'
  checksum64     = '2DB8973CB7AD5475D5AA80EEF9967A38E5873044C10C8195FC4D6C1E780F2E38'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
