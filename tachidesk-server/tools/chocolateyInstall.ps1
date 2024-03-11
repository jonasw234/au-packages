$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1501/Suwayomi-Server-v1.0.0-r1501-windows-x86.msi'
    checksum       = '4fa0f9aa37851bdfb8df24169e2a031e9a8e029b798d4c6a6ec61035b694d68a'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1501/Suwayomi-Server-v1.0.0-r1501-windows-x64.msi'
    checksum64     = 'cbd8b61f51e31fa9a9c2db49261cb81e7d747d5afd1b2eac0a484f7c0023c41a'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
