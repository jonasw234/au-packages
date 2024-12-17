$ErrorActionPreference = 'Stop';

$packageName = $env:chocolateyPackageName
$installString = "install"

[array]$key = Get-UninstallRegistryKey -SoftwareName 'GPT4All'
if ($key.Count -ge 1)
{
    Write-Warning "$packageName is already installed, using update parameter."
    $installString = "update"
}

$packageArgs = @{
    packageName    = $packageName
    fileType       = 'exe'
    url64          = 'https://github.com/nomic-ai/gpt4all/releases/download/v3.5.3/gpt4all-installer-win64-v3.5.3.exe'
    checksum64     = '6e4ed5fd53bfa36af10a291d6e8db06b51627462385e39c0b83e688608e2d1b3'
    checksumType64 = 'sha256'
    silentArgs     = $installString + ' --accept-licenses --default-answer --confirm-command'
}

Install-ChocolateyPackage @packageArgs
