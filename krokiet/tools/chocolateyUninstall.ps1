$desktopShortcutPath    = "$($ENV:PUBLIC)\Desktop\Czkawka GUI.lnk"
$startmenuShortcutPath  = "$($ENV:ProgramData)\Microsoft\Windows\Start Menu\Programs\Czkawka GUI.lnk"

$toolsDir               = Get-ToolsLocation
$installPath            = Join-Path $toolsDir 'czkawka'

Remove-Item -ErrorAction SilentlyContinue -Path $desktopShortcutPath
Remove-Item -ErrorAction SilentlyContinue -Path $startmenuShortcutPath
Remove-Item -ErrorAction SilentlyContinue -Recurse -Path $installPath
