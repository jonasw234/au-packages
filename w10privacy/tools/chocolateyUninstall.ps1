Write-Host Uninstall-ChocolateyPackage -PackageName 'w10privacy' -FileType 'exe' -SilentArgs '/S' -File "$env:ProgramFiles(x86)\W10Privacy\Uninstall.exe"
Uninstall-ChocolateyZipPackage -PackageName 'w10privacy' -ZipFileName 'W10Privacy.zip'
