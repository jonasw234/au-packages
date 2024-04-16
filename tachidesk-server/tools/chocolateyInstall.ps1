$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1515/Suwayomi-Server-v1.0.0-r1515-windows-x86.msi'
    checksum       = '151b655e5d93c73dd0c5cc5ecd320ea158e8ddcadd4aefb86918c66297da71bc'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1515/Suwayomi-Server-v1.0.0-r1515-windows-x64.msi'
    checksum64     = '22d3cc91197450885cd9dbdb5654f5870491275e3ecd67e2e2b5d94a44bed305'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
