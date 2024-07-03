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
    url64          = 'https://github.com/nomic-ai/gpt4all/releases/download/v3.0.0/gpt4all-installer-win64-v3.0.0.exe'
    checksum64     = 'b5f20f5285ed9d3520bf205acda3c1f663f7bbed97ca5f6f4731e89d583d4fb8'
    checksumType64 = 'sha256'
    silentArgs     = $installString + ' --accept-licenses --default-answer --confirm-command'
}

Install-ChocolateyPackage @packageArgs
