Import-Module au

$releases = 'https://github.com/federico-terzi/espanso/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64   = $download_page.links | Where-Object href -match '-win-installer' | Select-Object -First 1 -expand href
    $version = $url64.split('/v')[6]

    @{
        URL64   = 'https://github.com' + $url64
        Version = $version
    }
}

Update-Package -ChecksumFor 64
