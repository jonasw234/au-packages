$ErrorActionPreference = 'Stop';

# Remove Cupscale entry from PATH environment variable
# Based on: https://stackoverflow.com/a/2571200 and https://docs.microsoft.com/en-us/dotnet/api/system.string.replace?view=netframework-4.8
$installDir = Get-ItemPropertyValue -Path HKLM:\Software\Cupscale -Name InstallDir
[Environment]::SetEnvironmentVariable("PATH", [System.Environment]::GetEnvironmentVariable("PATH").Replace(";" + $installDir, ""), [System.EnvironmentVariableTarget]::User)
# Remove install location from registry
Remove-Item -Path "HKLM:\Software\Cupscale" -Force
