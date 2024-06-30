$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1541/Suwayomi-Server-v1.1.1-r1541-windows-x86.msi'
    checksum       = '63b3d3d5138b4b505e07a629aeb6c47b2c2625a06b1c4f77b41967238755081d'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1541/Suwayomi-Server-v1.1.1-r1541-windows-x64.msi'
    checksum64     = '567b66aea6a179275e545fd052acbdf7ff8c47f4b77afe5be9d979edaffb9b56'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
