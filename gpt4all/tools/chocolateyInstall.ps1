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
    url64          = 'https://github.com/nomic-ai/gpt4all/releases/download/v3.4.2/gpt4all-installer-win64-v3.4.2.exe'
    checksum64     = 'c655c6fa7d15fc0ac3e85ed350ebfaa439b9b130ceda166fcd073487c936c1da'
    checksumType64 = 'sha256'
    silentArgs     = $installString + ' --accept-licenses --default-answer --confirm-command'
}

Install-ChocolateyPackage @packageArgs
