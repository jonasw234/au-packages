import-module au

$releases = 'https://github.com/qarmin/czkawka/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64Bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_GetLatest {
    $AllProtocols = [System.Net.SecurityProtocolType]'Tls11,Tls12'
    [System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url     = $download_page.links | Where-Object href -match 'windows_czkawka_gui\.zip$' | ForEach-Object href | Select-Object -First 1
    $version = $url -split '-v|/windows_czkawka_gui\.zip'
    $version = $version[3]

    return @{
        URL     = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor All
