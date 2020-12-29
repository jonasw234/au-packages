$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'w10privacy'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1609175074/module/12302828636/name/W10Privacy.zip'
  checksum64     = 'da79e51ead606708fb97473ffd4f83133ca6c6a36a723921783cdbfacac015e6'
  checksumType64 = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyPackage -packageName 'w10privacy' -FileType 'exe' -SilentArgs '/S' -File64 "$toolsPath\W10Privacy $version Setup.exe"
