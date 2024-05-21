$ErrorActionPreference = 'Stop';

$packageToolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$toolsDir = Get-ToolsLocation

$installPath = Join-Path $toolsDir 'czkawka'
$binPath = Join-Path $installPath 'czkawka_gui.exe'
$iconPath = Join-Path $packageToolsDir 'icon_about.ico'

$desktopShortcutPath = "$($ENV:PUBLIC)\Desktop\Czkawka GUI.lnk"
$startmenuShortcutPath = "$($ENV:ProgramData)\Microsoft\Windows\Start Menu\Programs\Czkawka GUI.lnk"

$url64 = 'https://github.com/qarmin/czkawka/releases/download/7.0.0/windows_czkawka_gui_gtk_410.zip'
$checksum64 = '82a886eeb7b4bb0bcf56b218e0a65093b65d9ed4656bc6fe62662b6380a0a806'
$checksumType64 = 'sha256'

$packageName = $env:chocolateyPackageName


$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $installPath

    url64Bit       = $url64
    checksum64     = $checksum64
    checksumType64 = $checksumType64
}

$shortcutArgs = @{
    targetPath       = $binPath
    workingDirectory = $installPath
    iconLocation     = $iconPath
    windowStyle      = '1'
}

Install-ChocolateyZipPackage @packageArgs

Install-ChocolateyShortcut @shortcutArgs -ShortcutFilePath $desktopShortcutPath
Install-ChocolateyShortcut @shortcutArgs -ShortcutFilePath $startmenuShortcutPath
