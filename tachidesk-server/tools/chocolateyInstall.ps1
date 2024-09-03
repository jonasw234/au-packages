$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1578/Suwayomi-Server-v1.1.1-r1578-windows-x86.msi'
    checksum       = '6e8f70bc8b5a8f167c87486150e591608fba1ddbd968776689aca54aca43dc66'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.1.1-r1578/Suwayomi-Server-v1.1.1-r1578-windows-x64.msi'
    checksum64     = '3c3cc24382a2ce6e93ed9a08fd6e684d86cb7ed2df90a3efb8aef4029d46e51b'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
