$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'
    url64bit       = 'https://github.com/espanso/espanso/releases/download/v2.2.1/Espanso-Win-Installer-x86_64.exe'
    checksum64     = '4930b0cedfe36bd885596f0c283f21c9e6fdf60a49d17771b207c7e58e89f150'
    checksumType64 = 'sha256'
    silentArgs     = '/verysilent /norestart /nocloseapplications'
}

Install-ChocolateyPackage @packageArgs
