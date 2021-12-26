Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://github.com/NotHunter101/ExtraRolesAmongUs/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re      = 'Role\.Mod\.v\.(\d+\.)*\d+\.zip'
    $url     = $download_page.links | Where-Object href -match $re | ForEach-Object href | Select-Object -First 1
    $version = $url -split '\/v|\/' + $re
    $version = $version[1]

    @{
        URL     = 'https://github.com' + $url
        Version = $version
    }
}

Update-Package -ChecksumFor all
