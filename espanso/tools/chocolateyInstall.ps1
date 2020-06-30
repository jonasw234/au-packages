$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/federico-terzi/espanso/releases/download/v0.6.3/espanso-win-installer.exe'
  checksum       = 'B1FC7DD029B1C31EDE9C308AB2B37A4FEBD61E6660669B3DE6D3B1AC885774D5'
  checksumType   = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
