$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    fileType       = 'exe'
    packageName    = $packageName
    # url            = 'https://github.com/manisandro/gImageReader/releases/download/v3.3.1/gImageReader_3.3.1_qt5_i686.exe'
    # checksum       = 'A363F282CF44E839C3163EFA00D363A7372A84432B396F380C2A50241F45DD44'
    # checksumType   = 'sha256'
    url64bit       = 'https://github.com/manisandro/gImageReader/releases/download/v3.4.0/gImageReader_3.4.0_qt5_x86_64.exe'
    checksum64     = 'e6432b4112a9340bde9ecc94fe44b0c12920350d6f1b1d5205f44249c7c21343'
    checksum64Type = 'sha256'
    silentArgs     = '/S'
}
Install-ChocolateyPackage @packageArgs
