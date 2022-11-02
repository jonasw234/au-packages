$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64          = 'https://github.com/espanso/espanso/releases/download/v2.1.8/Espanso-Win-Installer-x86_64.exe'
  checksum64     = '2094262bd94ee5692f62797bc2d8bf25ff15b975b4c8d683b0fa8a31af2ba161'
  checksumType64 = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
