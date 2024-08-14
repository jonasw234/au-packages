$desktopShortcutPath    = "$($ENV:PUBLIC)\Desktop\Krokiet.lnk"
$startmenuShortcutPath  = "$($ENV:ProgramData)\Microsoft\Windows\Start Menu\Programs\Krokiet.lnk"

$toolsDir               = Get-ToolsLocation
$installPath            = Join-Path $toolsDir 'krokiet'

Remove-Item -ErrorAction SilentlyContinue -Path $desktopShortcutPath
Remove-Item -ErrorAction SilentlyContinue -Path $startmenuShortcutPath
Remove-Item -ErrorAction SilentlyContinue -Recurse -Path $installPath
