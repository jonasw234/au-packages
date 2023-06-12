$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'msi'
    url64bit       = 'https://github.com/Barre/privaxy/releases/download/v0.5.2/Privaxy_0.5.2_x64_en-US.msi'
    checksum64     = 'be5a57f31087f488c48dffa9cb6624813c4171e4f1ae2ae62c20d0ce75c063a3'
    checksumType64 = 'sha256'
    silentArgs     = '/qn /norestart'
}

Install-ChocolateyPackage @packageArgs
