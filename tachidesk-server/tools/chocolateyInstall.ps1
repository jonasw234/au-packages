$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url            = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1528/Suwayomi-Server-v1.0.0-r1528-windows-x86.msi'
    checksum       = 'a9cb8c0ac43923f319bde02e8d6f9ead91ef28816d564d9768c9b0b1f320b33d'
    checksumType   = 'sha256'
    url64bit       = 'https://github.com/Suwayomi/Suwayomi-Server-preview/releases/download/v1.0.0-r1528/Suwayomi-Server-v1.0.0-r1528-windows-x64.msi'
    checksum64     = '702ccc69836d8b34e8fb8483f49ac28bb011cc456706d2e592f092d527b42cad'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
