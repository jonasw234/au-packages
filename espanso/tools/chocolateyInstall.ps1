$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64          = 'https://github.com/federico-terzi/espanso/releases/download/v2.1.3-alpha/Espanso-Win-Installer-x86_64.exe'
  checksum64     = '5c3b5b4c14671d0fb56219499d12f10241680d3e996f92f84576274655b381f0'
  checksumType64 = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
