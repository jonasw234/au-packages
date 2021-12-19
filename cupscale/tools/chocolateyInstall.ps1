$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition
$pp = Get-PackageParameters
$installDir = $toolsPath
if ($pp.InstallDir) {
    $installDir = $pp.InstallDir
}
Write-Host "Cupscale is going to be installed in '$installDir'"
# Create a registry key to persist the install location
# This is needed to later remove the Cupscale install location from the PATH variable
# Based on https://blog.netwrix.com/2018/09/11/how-to-get-edit-create-and-delete-registry-keys-with-powershell/
New-Item -Path "HKLM:\Software" -Name "Cupscale" -Force
New-ItemProperty "HKLM:\Software\Cupscale" -Name "InstallDir" -Value $installDir -PropertyType "String" -Force

$packageArgs = @{
    packageName    = $packageName
    unzipLocation  = $installDir
    url64Bit       = 'https://github.com/n00mkrad/cupscale/releases/download/1.39/Cupscale.1.39.0f1.zip'
    checksum64     = 'fde68914ea4a103f4fe6cdc95a264b1b3af734bc768762ff6d7cfe22feb95e18'
    checksumType64 = 'sha256'
}

# Don’t create subfolders for each version
If (Test-Path -Path "$installDir\Cupscale *") {
    # Clean up previous partial installations if necessary
    Remove-Item -Path "$installDir\Cupscale *" -Recurse -Force
}
Install-ChocolateyZipPackage @packageArgs
# Move from subfolder to $installDir
Copy-Item -Path "$installDir\Cupscale *\*" -Destination "$installDir" -Recurse -Force
Remove-Item -Path "$installDir\Cupscale *" -Recurse -Force

# Add Cupscale.exe to PATH
if ($installDir -ne $toolsPath) {
    Install-ChocolateyPath $installDir
}
