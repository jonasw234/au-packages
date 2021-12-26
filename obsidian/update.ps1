Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://github.com/obsidianmd/obsidian-releases/releases'

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

    $re      = 'Obsidian\.(\d+(\.\d+)*).exe'
    $domain  = $releases -split '(?<=//.+)/' | Select-Object -First 1
    $url     = $download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href
    $url     = $url | ForEach-Object {$domain + $_ }
    $version = $url -match $re
    $version = $matches[1]

    @{
        URL     = $url
        Version = $version
    }
}

Update-Package -ChecksumFor all
