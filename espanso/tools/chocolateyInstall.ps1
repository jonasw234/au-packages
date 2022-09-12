$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64          = 'https://github.com/espanso/espanso/releases/download/v2.1.7-beta/Espanso-Win-Installer-x86_64.exe'
  checksum64     = 'b5af424d010a5fb4f34634eb8c05e70ed7f6cbdb9623f2f4997d7d9f658a16cf'
  checksumType64 = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
