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
    url64          = 'https://github.com/nomic-ai/gpt4all/releases/download/v2.8.0/gpt4all-installer-win64-v2.8.0.exe'
    checksum64     = 'a9029a845aeae464af29c844ca1ef7c41bf35b3cad3e19110912f43ee1e9a0a7'
    checksumType64 = 'sha256'
    silentArgs     = $installString + ' --accept-licenses --default-answer --confirm-command'
}

Install-ChocolateyPackage @packageArgs
