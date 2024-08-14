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

# Download the .exe file directly to the install path
Invoke-WebRequest -Uri $url64 -OutFile $binPath -UseBasicParsing

# Compute the local checksum of the downloaded file
$computedChecksum64 = (Get-FileHash -Path $binPath -Algorithm $checksumType64).Hash

# Compare the computed checksum with the expected checksum
if ($computedChecksum64 -eq $checksum64) {
    # Proceed with creating the shortcuts if the checksums match
    $shortcutArgs = @{
        targetPath       = $binPath
        workingDirectory = $installPath
        iconLocation     = $iconPath
        windowStyle      = '1'
    }

    Install-ChocolateyShortcut @shortcutArgs -ShortcutFilePath $desktopShortcutPath
    Install-ChocolateyShortcut @shortcutArgs -ShortcutFilePath $startmenuShortcutPath
} else {
    Write-Error "Checksum verification failed. Expected '$checksum64', got '$computedChecksum64'. Please retry the download or notify the package author on Github if the problem persists."
}
