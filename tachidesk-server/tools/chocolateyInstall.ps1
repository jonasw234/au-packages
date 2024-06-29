$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1540/Suwayomi-Server-v1.1.1-r1540-windows-x86.msi'
    checksum       = '51bd5ad00e6000f69db1a025245adeeb975e71f76baa4e81a31a06a6af812651'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1540/Suwayomi-Server-v1.1.1-r1540-windows-x64.msi'
    checksum64     = '74f4a5dea4cd18cde9a86dc3faf2bcc11f03c2cbd8d6fc0ce7eb6c2c5dbfc3e4'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
