$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName
$gameDirectory = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 945360\').InstallLocation
$modDirectory = ($gameDirectory + " - Extra Roles Mod")

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'zip'
  url           = 'https://github.com/NotHunter101/ExtraRolesAmongUs/releases/download/v1.3.0/Role.Mod.v.1.3.0.zip'
  checksum      = '9ef048f0d664e499ec06fe29391819359c2689d87eb898a173fbc0f37e674a4b'
  checksumType  = 'sha256'
  unzipLocation = $modDirectory
}
If (!(Test-Path $modDirectory))
{
    Copy-Item -Recurse $gameDirectory $modDirectory
}
Else
{
    Write-Warning "$modDirectory already exists.  Unpacking Extra Roles mod there."
}

Install-ChocolateyZipPackage @packageArgs
