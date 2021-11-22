$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/FreeTubeApp/FreeTube/releases/download/v0.15.1-beta/freetube-0.15.1-setup-x64.exe'
  checksum     = 'ba9b74ff0a6be9ef21bc4bf9c495911ff59eb351129fd43bae12c7ddab173695'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
