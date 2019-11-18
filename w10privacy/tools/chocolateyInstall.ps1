$ErrorActionPreference = 'Stop';

$toolsPath   = Split-Path $MyInvocation.MyCommand.Definition
$download_dir = "$Env:TEMP\chocolatey\$packageName\$Env:ChocolateyPackageVersion"

$packageArgs = @{
  packageName    = 'w10privacy'
  url64Bit       = 'https://sf91b3285d9193eec.jimcontent.com/download/version/1573985642/module/12302828636/name/W10Privacy.zip'
  checksum64     = '62AB0FC53A8FB18398F236C1FD08197F4ECC17ADA57D88C5B7A97B29931DBF9B'
  checksumType64 = 'sha256'
  unzipLocation  = $toolsPath
}

Install-ChocolateyZipPackage @packageArgs
