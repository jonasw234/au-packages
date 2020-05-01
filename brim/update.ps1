import-module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://github.com/brimsec/brim/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re      = 'Brim-Setup.exe'
    $domain  = $releases -split '(?<=//.+)/' | select -First 1
    $url     = $download_page.links | ? href -match $re | select -First 1 -expand href
    $url     = $url | % {$domain + $_ }
    $version = $download_page.links | ? href -match 'v\d(\.\d+)*$' | select -First 1 -expand title
    $version = $version.substring(1)

    @{
        URL     = $url
        Version = $version
    }
}

update -ChecksumFor 32
