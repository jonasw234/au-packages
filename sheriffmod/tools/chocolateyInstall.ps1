$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'zip'
  url           = 'https://github.com/Woodi-dev/Among-Us-Sheriff-Mod/releases/download/v1.1/Among.Us.Sheriff.Mod.1.1.zip'
  checksum      = 'e98305bb4109f0785dabe14edab54dd90dd7ed17c544d30d7ead43b9c59c80a1'
  checksumType  = 'sha256'
  unzipLocation = Get-ChildItem -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 945360\' -Name 'InstallLocation'
}

Install-ChocolateyZipPackage @packageArgs
