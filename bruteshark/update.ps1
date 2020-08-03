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

    $re      = 'DesktopInstaller_x64\.msi$'
    $url     = $download_page.Links | Where-Object href -match $re | Select-Object -First 1 -expand href
    $version = $download_page.Links | Where-Object href -match '\/tree\/v' | Select-Object -First 1 -expand title
    $version = $version.Replace('v', '')

    return @{
        URL64   = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor 64
