$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$packageArgs = @{
  packageName  = $packageName
  fileType     = 'exe'
  url          = 'https://github.com/brimdata/brim/releases/download/v0.28.0/Brim-Setup-0.28.0.exe'
  checksum     = '363fe8954edb1e826d2932d779973293479274a813fd7b5c0dfb67f8732ca9fd'
  checksumType = 'sha256'
  silentArgs   = '--silent'
}

Install-ChocolateyPackage @packageArgs
