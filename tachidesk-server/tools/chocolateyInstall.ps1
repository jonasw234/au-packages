$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1521/Suwayomi-Server-v1.0.0-r1521-windows-x86.msi'
    checksum       = '3660a67f32c8e80b32d92e487314d18f920d28023628410375b1335ce89e634c'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1521/Suwayomi-Server-v1.0.0-r1521-windows-x64.msi'
    checksum64     = 'a873106167cf7307a1d176bd5bc95ac358f4e65b325907b7ca53b62eb456c7e4'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
