import-module au

$releases = 'https://api.github.com/repos/watchexec/watchexec/releases/latest'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64Bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url     = (($download_page.Content | ConvertFrom-Json).assets | Where-Object browser_download_url -match '-x86_64-pc-windows-(gnu|msvc)\.zip$').browser_download_url
    $version = $url -split '-v|/watchexec-|-'
    $version = $version[1]

    return @{
        URL     = $url
        Version = $version
    }
}

Update-Package -ChecksumFor 64
