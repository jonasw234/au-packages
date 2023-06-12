Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://api.github.com/repos/Barre/privaxy/releases/latest'

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

    $re = 'privaxy_nogui-x86_64-pc-windows-msvc\.zip$'
    $url = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -match $re).browser_download_url
    $version = $url -split '\/v|\/' + $re
    $version = $version[1]

    return @{
        URL64   = $url
        Version = $version
    }
}

Update-Package -ChecksumFor 64
