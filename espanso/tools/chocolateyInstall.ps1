$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/federico-terzi/espanso/releases/download/v0.7.1/espanso-win-installer.exe'
  checksum       = '90f469cdde1c88da8644feeddcdf528bc5fcb315d9c20cc5ea086a62e87a8cf5'
  checksumType   = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
