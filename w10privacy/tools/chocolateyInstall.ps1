$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'w10privacy'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1717508256/module/12302828636/name/W10Privacy.zip'
  checksum64     = 'd0e48c859762b912e2d3fdc562da4a06ce878b7d9729eb8870d927805d03bb02'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPackage -packageName 'w10privacy' -FileType 'exe' -SilentArgs '/S' -File64 "$toolsPath\W10Privacy * Setup.exe"
