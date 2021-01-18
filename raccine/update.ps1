import-module au

$releases = 'https://github.com/Neo23x0/Raccine/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"   = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64   = $download_page.links | ? href -match '^Raccine\.zip$' | % href | select -First 1
    $version = (Split-Path ( Split-Path $url64 ) -Leaf).Replace('v', '')

    @{
        URL     = 'https://github.com' + $url64
        Version = $version
    }
}

update
