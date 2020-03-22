$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/federico-terzi/espanso/releases/download/v0.4.0/espanso-win-installer.exe'
  checksum       = '2d33580b1b2a4ddf52b62754d8ead633a87fb8884e460c53e7be738c7eebadfd'
  checksumType   = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
