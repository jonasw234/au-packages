Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://api.github.com/repos/brimdata/brim/releases/latest'

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

    $download_page = Invoke-WebRequest -Uri $releases

    $re      = 'Brim-Setup.*\.exe$'
    $url     = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -match $re).browser_download_url
    $version = $url -split '\/v|\/' + $re
    $version = $version[1]

    @{
        URL     = $url
        Version = $version
    }
}

Update-Package -ChecksumFor all
