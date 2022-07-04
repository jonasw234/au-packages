$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64          = 'https://github.com/espanso/espanso/releases/download/v2.1.6-beta/Espanso-Win-Installer-x86_64.exe'
  checksum64     = '4a88975f0f6b1a45ea44e9f63bab4fddc905340f3909e65a3dd129b09248c2c6'
  checksumType64 = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
