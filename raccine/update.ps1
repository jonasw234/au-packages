Import-Module au

$releases = 'https://api.github.com/repos/Neo23x0/Raccine/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"   = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $re      = 'Raccine\.zip$'
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $url     = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -match $re).browser_download_url
    $version = $url -match '\/(\d+(\.\d+)*)\/'
    $version = $matches[1]

    @{
        URL     = 'https://github.com' + $url
        Version = $version
    }
}

Update-Package -ChecksumFor all
