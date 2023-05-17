$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
    packageName  = $packageName
    fileType     = 'exe'
    url          = 'https://github.com/xiaoyifang/goldendict-ng/releases/download/v23.05.01-WuYi.230501.6c8b0c1c/6.4.3-GoldenDict-ng-v23.05.01-WuYi-Installer.exe'
    checksum     = '8c5d474e02ef3ec1aee38590179d388d6ce7f4a8c8bef0b8a8de2d3b24fe6cad'
    checksumType = 'sha256'
    silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
