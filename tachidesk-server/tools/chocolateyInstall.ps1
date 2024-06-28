$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1539/Suwayomi-Server-v1.1.1-r1539-windows-x86.msi'
    checksum       = 'b7597b96000fdf2191eb5a8f4692ea1ab45141eaea6fcf3f92cc4f9cce80c5e1'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1539/Suwayomi-Server-v1.1.1-r1539-windows-x64.msi'
    checksum64     = 'dddbaa1ba3b4592e5de0eec9f5d2b1a2b4801bc00e1e34194cbd167fc638e091'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
