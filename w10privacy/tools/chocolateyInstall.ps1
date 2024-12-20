$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'w10privacy'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1734596757/module/12302828636/name/W10Privacy.zip'
  checksum64     = '1d5046df237b597a6dfddb7239e33f948313067893dbf5f067636d14029d8150'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPackage -packageName 'w10privacy' -FileType 'exe' -SilentArgs '/S' -File64 "$toolsPath\W10Privacy * Setup.exe"
