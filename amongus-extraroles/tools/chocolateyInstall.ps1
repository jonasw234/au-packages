$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName
$gameDirectory = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 945360\').InstallLocation
$modDirectory = ($gameDirectory + " - Extra Roles Mod")

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'zip'
  url           = 'https://github.com/NotHunter101/ExtraRolesAmongUs/releases/download/v1.3.0/Role.Mod.v.1.3.0.zip'
  checksum      = ''
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
