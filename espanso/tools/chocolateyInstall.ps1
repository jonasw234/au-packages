$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/federico-terzi/espanso/releases/download/v0.7.0/espanso-win-installer.exe'
  checksum       = 'bc747c6ea170ada5c89558f5d31c04ed55e0d98fc3f2faa575b722a90411d89b'
  checksumType   = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
