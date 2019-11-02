$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'titlecase'
  url32Bit       = 'https://github.com/wezm/titlecase/releases/download/v0.10.0/titlecase-v0.10.0-i686-pc-windows-msvc.zip'
  checksum32     = '2f69c67f25d0f4e4e1b1123ea37a6be724443bb62d3b3ebc1e4757199e6c5182'
  checksumType32 = 'sha256'
  url64Bit       = 'https://github.com/wezm/titlecase/releases/download/v0.10.0/titlecase-v0.10.0-x86_64-pc-windows-msvc.zip'
  checksum64     = '0e3711eafd4beee31ca09c6f013832fc8da54bd32befa3f12b07d8725a4b203e'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
