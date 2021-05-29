$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName
$gameDirectory = ''
try {
    $gameDirectory = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 945360\').InstallLocation
    $modDirectory = ($gameDirectory + " - Extra Roles Mod")
} catch {
    Write-Error "Cannot locate game directory.  This package works only with the Steam version of Among Us!"
}

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'zip'
  url           = 'https://github.com/NotHunter101/ExtraRolesAmongUs/releases/download/v1.3.1/Role.Mod.v.1.3.1.zip'
  checksum      = '57749791023660c3149abfacb01b68675cb71562a5db18a306e4947fc322c59b'
  checksumType  = 'sha256'
  unzipLocation = $modDirectory
}
If ($gameDirectory)
{
    If (!(Test-Path $modDirectory))
    {
        Copy-Item -Recurse $gameDirectory $modDirectory
    }
    Else
    {
        Write-Warning "$modDirectory already exists.  Unpacking Extra Roles mod there."
    }

    Install-ChocolateyZipPackage @packageArgs
}
