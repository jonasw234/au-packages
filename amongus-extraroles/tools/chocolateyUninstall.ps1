$gameDirectory = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 945360\').InstallLocation

Remove-Item -Recurse ($gameDirectory + " - Extra Roles Mod")
