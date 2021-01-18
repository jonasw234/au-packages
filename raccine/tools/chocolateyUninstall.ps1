unzipLocation = Split-Path $MyInvocation.MyCommand.Definition
Start-Process "cmd.exe /c set SELECTED_OPTION=UNINSTALL && $unzipLocation\Raccine\install-raccine.bat"
