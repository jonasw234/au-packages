$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName  = $packageName
    fileType     = 'exe'
    url          = 'https://github.com/xiaoyifang/goldendict-ng/releases/download/v24.05.05-LiXia.ecd1138c/6.7.0-GoldenDict-ng-Installer.exe'
    checksum     = '4534a47f3d6fdb07fe656a469587f03e152d990a823ee85c6c5c191eb2c2ecbb'
    checksumType = 'sha256'
    silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
