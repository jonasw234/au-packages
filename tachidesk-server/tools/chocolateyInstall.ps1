$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server/releases/download/v1.1.1/Suwayomi-Server-v1.1.1-r1535-windows-x86.msi'
    checksum       = '48bd4c7810dcc9d11a5ac965b59373b503fcfbfc34296b5a6ca60bc269263266'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server/releases/download/v1.1.1/Suwayomi-Server-v1.1.1-r1535-windows-x64.msi'
    checksum64     = '83d61c5fa90964b89c6145f885785715516247fe81387dfbf314c55faafa5a35'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
