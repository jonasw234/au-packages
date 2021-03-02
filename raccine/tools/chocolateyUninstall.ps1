$installer = "\tools\Raccine\install-raccine.bat"
Start-Process -FilePath "$env:ChocolateyPackageFolder$installer" -ArgumentList @("UNINSTALL")
