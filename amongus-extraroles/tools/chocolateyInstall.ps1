$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName
$gameDirectory = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 945360\').InstallLocation
$modDirectory = ($gameDirectory + " - Extra Roles Mod")

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'zip'
  url           = 'https://github.com/NotHunter101/ExtraRolesAmongUs/releases/download/v1.2.6/Role.Mod.v.1.2.6.zip'
  checksum      = '30c1a22e26747a75f86985de655ac84a09bf51d8c26460652bcf3a9cb7c00d4f'
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
