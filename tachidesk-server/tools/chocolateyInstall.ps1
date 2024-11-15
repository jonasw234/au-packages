$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1610/Suwayomi-Server-v1.1.1-r1610-windows-x86.msi'
    checksum       = '78ab2c8f5c979288997a221d9043e7b401448e1516008aeaeccd434fd8f62dff'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1610/Suwayomi-Server-v1.1.1-r1610-windows-x64.msi'
    checksum64     = 'c5efaaf0296990785bbd8b06f62437f38c5a2ec75e49e91b2478eebbe11631ce'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
