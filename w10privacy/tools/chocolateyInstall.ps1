$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'w10privacy'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1660314790/module/12302828636/name/W10Privacy.zip'
  checksum64     = '99cf2746936530218c4411bfde76d18f9b047bb8e2f39f61f5a66da126eebb64'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPackage -packageName 'w10privacy' -FileType 'exe' -SilentArgs '/S' -File64 "$toolsPath\W10Privacy $version Setup.exe"
