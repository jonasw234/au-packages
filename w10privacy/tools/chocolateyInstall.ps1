$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  fileType       = 'exe'
  packageName    = 'w10privacy'
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1580729393/module/12302828636/name/W10Privacy.zip'
  checksum64     = '8F490E5E2A8AEB82544A44001D44576610D7D4B0ED9388B36CBA20858874E1C2'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
