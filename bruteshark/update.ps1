import-module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://github.com/odedshimon/BruteShark/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re      = 'BruteSharkDesktopInstaller_x64\.msi$'
    $url     = $download_page.links | Where-Object href -match $re | ForEach-Object href | Select-Object -First 1
    $version = $url -split '\/v|\/' + $re
    $version = $version[1]

    return @{
        URL64   = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor 64
