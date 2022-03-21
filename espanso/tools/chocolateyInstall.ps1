$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64          = 'https://github.com/federico-terzi/espanso/releases/download/v2.1.4-beta/Espanso-Win-Installer-x86_64.exe'
  checksum64     = 'ffc485eb8e60607192e29a38659a4b930dfd69d42bbe38657525eb505bdf65cc'
  checksumType64 = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
