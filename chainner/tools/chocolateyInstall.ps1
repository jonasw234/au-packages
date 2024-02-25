$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/chaiNNer-org/chaiNNer/releases/download/v0.22.0/chaiNNer-0.22.0-x64-windows-setup.exe'
  checksum64     = '13985af82cfe9dee6b1445d26ec8a45c92e28bb4968929388db91c152ca36318'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
