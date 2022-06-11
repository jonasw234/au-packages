Import-Module au
. $PSScriptRoot\..\_scripts\all.ps1

$releases = 'https://www.winprivacy.de/deutsch-start/download/'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re       = 'W10Privacy.zip'
    $domain   = $releases -split 'W10Privacy.zip' | select -First 1
    $url      = $download_page.links | ? href -match $re | select -First 1 -expand href
    $url      = "https://www.w10privacy.de$url" 
    $redirect = Invoke-WebRequest -Uri $url -MaximumRedirection 0 -ErrorAction Ignore -UseBasicParsing
    $url      = $redirect.Headers.Location
    $download_page.Content -match 'v(\.\d+){0,5}\.\d+'
    $version  = $matches[0].substring(2)

    @{
        Version = $version
        URL64   = $url
    }
}

Update-Package -ChecksumFor 64
