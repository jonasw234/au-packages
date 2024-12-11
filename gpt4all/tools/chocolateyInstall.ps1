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
    url64          = 'https://github.com/nomic-ai/gpt4all/releases/download/v3.5.1/gpt4all-installer-win64-v3.5.1.exe'
    checksum64     = '5096d15270b9c7011ffacdb5b3e310441a12a370e230c679c5f7b74fa749c6d0'
    checksumType64 = 'sha256'
    silentArgs     = $installString + ' --accept-licenses --default-answer --confirm-command'
}

Install-ChocolateyPackage @packageArgs
