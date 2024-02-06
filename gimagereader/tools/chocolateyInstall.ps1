$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    fileType       = 'exe'
    packageName    = $packageName
    # url            = 'https://github.com/manisandro/gImageReader/releases/download/v3.3.1/gImageReader_3.3.1_qt5_i686.exe'
    # checksum       = 'A363F282CF44E839C3163EFA00D363A7372A84432B396F380C2A50241F45DD44'
    # checksumType   = 'sha256'
    url64bit       = 'https://github.com/manisandro/gImageReader/releases/download/v3.4.2/gImageReader_3.4.2_qt5_x86_64.exe'
    checksum64     = 'db959a95534e29845f8954ac82c88f18b0b20c5e01cfe0720765718d96d7781f'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
}
Install-ChocolateyPackage @packageArgs
