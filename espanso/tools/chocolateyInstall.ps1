$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/federico-terzi/espanso/releases/download/v0.6.1/espanso-win-installer.exe'
  checksum       = '99FEB4CBBD3DD8D1DA2A57031C4E8F3153176BFCA8C1196AC20EBBA27E7533F0'
  checksumType   = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
