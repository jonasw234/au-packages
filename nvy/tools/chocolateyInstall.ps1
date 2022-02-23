$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

New-Item -Path $($env:ChocolateyInstall)\tools -Name $packageName -ItemType Directory -Force

Install-BinFile -Name Nvy -Path $($env:ChocolateyInstall)\tools\$packageName\Nvy.exe -UseStart
