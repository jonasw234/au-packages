$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64          = 'https://github.com/chaiNNer-org/chaiNNer/releases/download/v0.24.1/chaiNNer-0.24.1-windows-setup.exe'
  checksum64     = 'd58a69e6e607fe9e04fafc9b95e8732cf26538aae829326e787730d73347ddf7'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs
