$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64          = 'https://github.com/federico-terzi/espanso/releases/download/v2.1.5-beta/Espanso-Win-Installer-x86_64.exe'
  checksum64     = 'a3da8f3b721405a34c095d6f8e553518e140311e02c512453898e55dbd4f3e70'
  checksumType64 = 'sha256'
  silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
