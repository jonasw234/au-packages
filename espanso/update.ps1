Import-Module au

$releases = 'https://api.github.com/repos/federico-terzi/espanso/releases/latest'

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

    $url64   = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -match '-win-installer.+\.exe$').browser_download_url
    $version = $url64.split('/v')[8]

    @{
        URL64   = $url64
        Version = $version
    }
}

Update-Package -ChecksumFor 64
