$ErrorActionPreference  = 'Stop';

$packageToolsDir        = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$toolsDir               = Get-ToolsLocation

$installPath            = Join-Path $toolsDir 'czkawka'
$binPath                = Join-Path $installPath 'czkawka_gui.exe'
$iconPath               = Join-Path $packageToolsDir 'icon_about.ico'

$desktopShortcutPath    = "$($ENV:PUBLIC)\Desktop\Czkawka GUI.lnk"
$startmenuShortcutPath  = "$($ENV:ProgramData)\Microsoft\Windows\Start Menu\Programs\Czkawka GUI.lnk"

$url64                  = 'https://github.com/qarmin/czkawka/releases/download/5.1.0/windows_czkawka_gui.zip'
$checksum64             = 'ad84840fbb7f936033a11f0a6019dee084af4a1a73b86631fbf9684321a9ea2e'
$checksumType64         = 'sha256'

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
