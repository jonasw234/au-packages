$ErrorActionPreference = 'Stop';

$packageToolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$toolsDir = Get-ToolsLocation

$installPath = Join-Path $toolsDir 'krokiet'
$binPath = Join-Path $installPath 'krokiet.exe'
$iconPath = Join-Path $packageToolsDir 'icon_about.ico'

$desktopShortcutPath = "$($ENV:PUBLIC)\Desktop\Krokiet.lnk"
$startmenuShortcutPath = "$($ENV:ProgramData)\Microsoft\Windows\Start Menu\Programs\Krokiet.lnk"

$url64 = 'https://github.com/qarmin/czkawka/releases/download/7.0.0/windows_krokiet.exe'
$checksum64 = 'c98191d420f3c66f56fab9e232e604c354ecae30513b79497f8430f6111be42c'
$checksumType64 = 'sha256'

# Ensure the installation path exists
if (-not (Test-Path -Path $installPath)) {
    New-Item -ItemType Directory -Force -Path $installPath | Out-Null
}

# Download the .exe file directly to the install path
Get-ChocolateyWebFile -PackageName krokiet -Url64bit $url64 -Checksum64 $checksum64 -ChecksumType64 SHA256 -FileFullPath $binPath

$shortcutArgs = @{
    targetPath       = $binPath
    workingDirectory = $installPath
    iconLocation     = $iconPath
    windowStyle      = '1'
}

Install-ChocolateyShortcut @shortcutArgs -ShortcutFilePath $desktopShortcutPath
Install-ChocolateyShortcut @shortcutArgs -ShortcutFilePath $startmenuShortcutPath
