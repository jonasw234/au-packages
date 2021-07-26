$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://download.breitbandmessung.de/bbm/Breitbandmessung-win.exe'
  checksum     = '73284ab1aeb766f0abe56841695b1f8e52412f5be6057fd920962e59235a972f'
  checksumType = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
