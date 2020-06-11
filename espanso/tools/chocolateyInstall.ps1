$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/federico-terzi/espanso/releases/download/v0.6.2/espanso-win-installer.exe'
  checksum       = '3C18C93DFE7A34A0B1BC199B02DF3AE800A16631E87813948A354AC833ACD916'
  checksumType   = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
