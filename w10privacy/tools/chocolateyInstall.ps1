$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'w10privacy'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1665135943/module/12302828636/name/W10Privacy.zip'
  checksum64     = '9b68ac4ed3ebdeeb4d34cab7ada9456a059a607c3a40460d8a12d5f79a7f048e'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPackage -packageName 'w10privacy' -FileType 'exe' -SilentArgs '/S' -File64 "$toolsPath\W10Privacy $version Setup.exe"
